import serial
import serial.tools.list_ports
import time

# O "cérebro" do nosso script. Este dicionário mapeia o valor hexadecimal
# recebido para a mensagem que será exibida.
BUTTON_MAP = {
    # Valores que você forneceu:
    0x78: "Nenhum botão pressionado",
    0x3C: "KEY0",
    0x79: "KEY1",
    0x7A: "KEY2",
    0x7C: "KEY3",
    0x1E: "KEY0 + KEY1",
    0x3D: "KEY0 + KEY2",
    0x3E: "KEY0 + KEY3",
    0x7B: "KEY1 + KEY2",
    0x7D: "KEY1 + KEY3",
    0x7E: "KEY2 + KEY3",
    0x0F: "KEY0 + KEY1 + KEY2",
    0x1F: "KEY0 + KEY1 + KEY3",
    0x3F: "KEY0 + KEY2 + KEY3",
    0x7F: "KEY1 + KEY2 + KEY3", # Note: Adicionei este que faltava, 01111111
    0x00: "KEY0 + KEY1 + KEY2 + KEY3"
}

def list_serial_ports():
    """Lista as portas seriais disponíveis no sistema."""
    ports = serial.tools.list_ports.comports()
    if not ports:
        print("Nenhuma porta serial encontrada!")
        return None
    
    print("Portas seriais disponíveis:")
    for i, port in enumerate(ports):
        print(f"  {i}: {port.device} - {port.description}")
    return ports

def main():
    """Função principal para receber e decodificar os estados dos botões."""
    
    ports = list_serial_ports()
    if not ports:
        return

    port_index_str = input("Digite o número da porta que deseja usar: ")
    try:
        port_index = int(port_index_str)
        selected_port = ports[port_index].device
    except (ValueError, IndexError):
        print("Entrada inválida.")
        return

    # BAUD RATE configurada para 115200
    BAUD_RATE = 115200
    
    print(f"\nIniciando monitor na porta {selected_port} a {BAUD_RATE} baud...")
    print("Pressione os botões na FPGA para ver o estado.")
    print("Pressione Ctrl+C para sair.")

    try:
        ser = serial.Serial(selected_port, BAUD_RATE, timeout=1)
        
        last_received_value = None

        while True:
            data_byte = ser.read(1)
            
            if data_byte: # Se um byte foi realmente recebido
                current_value = int.from_bytes(data_byte, "big")

                # Só imprime se o estado mudou
                if current_value != last_received_value:
                    # Procura o valor no dicionário. Se não encontrar, avisa que é desconhecido.
                    message = BUTTON_MAP.get(current_value, f"VALOR DESCONHECIDO: 0x{current_value:02X}")
                    print(f"Estado: {message}")
                    
                    last_received_value = current_value
            
            time.sleep(0.01)

    except serial.SerialException as e:
        print(f"\nERRO: Não foi possível abrir a porta serial: {e}")
    except KeyboardInterrupt:
        print("\n\nPrograma encerrado.")
    finally:
        if 'ser' in locals() and ser.is_open:
            ser.close()
            print("Porta serial fechada.")

if __name__ == "__main__":
    main()