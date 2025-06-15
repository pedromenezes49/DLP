import tkinter as tk
import serial
import serial.tools.list_ports
import threading
import time

# --- Configurações do Jogo ---
GRID_SIZE = 15
CELL_SIZE = 40  # Tamanho de cada quadrado em pixels

FPGA_MOVEMENTS = {
    0x78: (0, 0),   # Nenhum botão pressionado -> Parado 0000 0000 -> 0111 1000
    0x3C: (0, 1),   # KEY0 -> Baixo                      0000 0001 -> 0011 1100
    0x79: (1, 0),   # KEY1 -> Direita                    0000 0010 -> 0111 1001
    0x7A: (0, -1),  # KEY2 -> Cima                       0000 0100 -> 0111 1010
    0x7C: (-1, 0),  # KEY3 -> Esquerda                   0000 1000 -> 0111 1100

    0x7B: (1, -1),  # KEY1 (Direita) + KEY2 (Cima) -> Diagonal Superior Direita
    0x7E: (-1, -1), # KEY3 (Esquerda) + KEY2 (Cima) -> Diagonal Superior Esquerda
    0x1E: (1, 1),   # KEY1 (Direita) + KEY0 (Baixo) -> Diagonal Inferior Direita
    0x3E: (-1, 1),  # KEY3 (Esquerda) + KEY0 (Baixo) -> Diagonal Inferior Esquerda
}

# --- Variáveis Globais ---
# Variável para compartilhar o último comando entre os threads
ultimo_movimento = (0, 0)
jogo_rodando = True

# --- Funções de Comunicação Serial (em um Thread separado) ---

def selecionar_porta_serial():
    """Função para listar e selecionar a porta serial."""
    ports = serial.tools.list_ports.comports()
    if not ports:
        print("Nenhuma porta serial encontrada!")
        return None
    
    print("Portas seriais disponíveis:")
    for i, port in enumerate(ports):
        print(f"  {i}: {port.device} - {port.description}")
    
    while True:
        try:
            port_index_str = input("Digite o número da porta que deseja usar: ")
            port_index = int(port_index_str)
            return ports[port_index].device
        except (ValueError, IndexError):
            print("Entrada inválida. Tente novamente.")

def ler_dados_uart():
    """Esta função roda em um thread separado para não travar a interface gráfica."""
    global ultimo_movimento, jogo_rodando

    selected_port = selecionar_porta_serial()
    if not selected_port:
        jogo_rodando = False
        return

    BAUD_RATE = 115200
    
    try:
        ser = serial.Serial(selected_port, BAUD_RATE, timeout=1)
        print(f"\nMonitorando porta {selected_port}... Controle o jogo com os botões da FPGA.")
        
        while jogo_rodando:
            data_byte = ser.read(1)
            if data_byte:
                valor_recebido = int.from_bytes(data_byte, "big")
                
                # Procura o movimento correspondente no dicionário. Se não encontrar, fica parado.
                movimento_mapeado = FPGA_MOVEMENTS.get(valor_recebido, (0, 0))
                
                # Atualiza a variável global que o jogo usa
                ultimo_movimento = movimento_mapeado

            time.sleep(0.01)
            
        ser.close()
        print("Porta serial fechada.")

    except serial.SerialException as e:
        print(f"\nERRO: Não foi possível abrir a porta serial: {e}")
        jogo_rodando = False

# --- Lógica do Jogo (Thread Principal da Interface Gráfica) ---

# Inicializa a janela principal
root = tk.Tk()
root.title("Jogo Controlado pela FPGA")

# Cria o canvas
canvas = tk.Canvas(root, width=GRID_SIZE * CELL_SIZE, height=GRID_SIZE * CELL_SIZE, bg="lightgray")
canvas.pack()

# Desenha a grade
for i in range(GRID_SIZE):
    for j in range(GRID_SIZE):
        x0, y0 = i * CELL_SIZE, j * CELL_SIZE
        x1, y1 = x0 + CELL_SIZE, y0 + CELL_SIZE
        canvas.create_rectangle(x0, y0, x1, y1, outline="#ccc")

# Posição inicial do jogador
pos_x, pos_y = GRID_SIZE // 2, GRID_SIZE // 2

# Desenha o jogador
player_rect = canvas.create_rectangle(
    pos_x * CELL_SIZE + 2, pos_y * CELL_SIZE + 2,
    (pos_x + 1) * CELL_SIZE - 2, (pos_y + 1) * CELL_SIZE - 2,
    fill="red", outline="darkred", width=2
)

def mover_jogador():
    """Esta função é chamada repetidamente para atualizar a tela."""
    global pos_x, pos_y, ultimo_movimento

    if not jogo_rodando:
        root.destroy()
        return

    # Pega o último movimento recebido pela UART
    dx, dy = ultimo_movimento

    if dx != 0 or dy != 0:
        # Apaga a posição anterior (repinta a célula com a cor de fundo)
        canvas.create_rectangle(
            pos_x * CELL_SIZE, pos_y * CELL_SIZE,
            (pos_x + 1) * CELL_SIZE, (pos_y + 1) * CELL_SIZE,
            fill="lightgray", outline="#ccc"
        )

        # Atualiza a posição, garantindo que o jogador não saia da tela
        nova_pos_x = pos_x + dx
        nova_pos_y = pos_y + dy
        
        if 0 <= nova_pos_x < GRID_SIZE:
            pos_x = nova_pos_x
        if 0 <= nova_pos_y < GRID_SIZE:
            pos_y = nova_pos_y

        # Move o jogador para a nova posição
        canvas.coords(
            player_rect,
            pos_x * CELL_SIZE + 2, pos_y * CELL_SIZE + 2,
            (pos_x + 1) * CELL_SIZE - 2, (pos_y + 1) * CELL_SIZE - 2
        )
        
        # CORREÇÃO: Garante que o jogador esteja sempre no topo da pilha de desenho
        canvas.tag_raise(player_rect)
    
    # Agenda a próxima atualização
    root.after(100, mover_jogador)

def fechar_janela():
    """Função para encerrar o thread da UART ao fechar a janela."""
    global jogo_rodando
    jogo_rodando = False
    root.destroy()

# --- Inicialização ---

# Configura o fechamento da janela
root.protocol("WM_DELETE_WINDOW", fechar_janela)

# Inicia o thread de comunicação UART
thread_uart = threading.Thread(target=ler_dados_uart, daemon=True)
thread_uart.start()

# Inicia o loop do jogo
root.after(100, mover_jogador)

# Inicia a interface gráfica
root.mainloop()

