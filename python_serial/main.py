import serial
import time

# --- Configurações da Porta Serial ---
# !!! ATENÇÃO: MUDE 'COM_PORT' PARA A PORTA CORRETA !!!
# Exemplos: 'COM3' no Windows, '/dev/ttyUSB0' no Linux, '/dev/cu.usbserial-XXXX' no macOS
SERIAL_PORT = 'COM_PORT'
# Baseado no VHDL: 50_000_000 / (16 * 7) = 446428.57
# Usaremos o padrão mais próximo 460800, mas o ideal seria 446428 se suportado.
BAUD_RATE = 460800
# Ou tente a taxa exata (pode não ser suportada em todas as plataformas):
# BAUD_RATE = 446428

TIMEOUT_SERIAL = 1  # Tempo limite para leitura em segundos

# --- Estados Simples para o Script Python (Opcional, mas ajuda a entender) ---
STATE_IDLE = 0
STATE_WAITING_ECHO = 1
current_state = STATE_IDLE
sent_byte = None

def main():
    global current_state
    global sent_byte

    try:
        # Abre a porta serial
        # Configurações baseadas no VHDL: 8 data bits, Mark Parity, 1 stop bit
        ser = serial.Serial(
            port=SERIAL_PORT,
            baudrate=BAUD_RATE,
            bytesize=serial.EIGHTBITS,
            parity=serial.PARITY_MARK,  # Transmissor envia '1', Receptor espera '1'
            stopbits=serial.STOPBITS_ONE,
            timeout=TIMEOUT_SERIAL
        )
        print(f"Porta serial {SERIAL_PORT} aberta com sucesso a {BAUD_RATE} bps.")
        print("Configurações: 8 data bits, Paridade de Marca (Mark Parity), 1 Stop bit.")
        print("O FPGA está configurado para ecoar os bytes recebidos.")
        print("Digite um caractere para enviar (ou 'quit' para sair).")

    except serial.SerialException as e:
        print(f"Erro ao abrir a porta serial {SERIAL_PORT}: {e}")
        print("Verifique se a porta está correta e não está em uso por outro programa.")
        print(f"A taxa de baud configurada é {BAUD_RATE}. Se você usou 446428 e falhou, tente 460800.")
        return

    try:
        current_state = STATE_IDLE
        while True:
            if current_state == STATE_IDLE:
                user_input = input("PC Envia > ")

                if user_input.lower() == 'quit':
                    print("Saindo...")
                    break

                if len(user_input) > 0:
                    # Pega o primeiro caractere e converte para byte
                    char_to_send = user_input[0]
                    byte_to_send = char_to_send.encode('utf-8') # Ou 'ascii', dependendo do que você espera

                    # Limita a um byte, se o usuário digitar mais
                    if len(byte_to_send) > 1:
                        # Se for multibyte UTF-8, pode precisar de tratamento especial
                        # Para UART simples, geralmente enviamos um byte de cada vez
                        # Aqui, vamos pegar apenas o primeiro byte da codificação
                        # ou alertar o usuário.
                        # Para simplificar, vamos assumir ASCII ou que o primeiro byte é o desejado.
                        # Se você precisar enviar valores hexadecimais específicos,
                        # poderia fazer: byte_to_send = bytes.fromhex(userInput)
                        print(f"Nota: Enviando o primeiro caractere '{char_to_send}' como byte: {byte_to_send[0]:#04x} ({byte_to_send[0]})")
                        sent_byte = bytes([byte_to_send[0]]) # Garante que é um objeto bytes de um único byte
                    else:
                        sent_byte = byte_to_send
                        print(f"PC: Enviando byte: {sent_byte.hex()} ('{char_to_send}')")


                    if sent_byte: # Confirma que temos algo para enviar
                        ser.write(sent_byte)
                        current_state = STATE_WAITING_ECHO
                else:
                    print("Por favor, digite um caractere.")

            elif current_state == STATE_WAITING_ECHO:
                # Tenta ler o eco da FPGA
                received_byte = ser.read(1) # Espera receber 1 byte

                if received_byte:
                    print(f"FPGA Ecoou < {received_byte.hex()} ('{received_byte.decode('utf-8', errors='replace')}')")
                    if received_byte == sent_byte:
                        print("Eco CORRETO!")
                    else:
                        print(f"Eco INCORRETO! Esperado: {sent_byte.hex()}, Recebido: {received_byte.hex()}")
                    current_state = STATE_IDLE
                    sent_byte = None
                elif ser.timeout > 0 and sent_byte: # Timeout ocorreu e estávamos esperando um eco
                    print("FPGA: Timeout! Nenhum eco recebido.")
                    current_state = STATE_IDLE # Volta para idle para tentar enviar novamente
                    sent_byte = None
                # Se ser.timeout for 0 e nada for lido, received_byte será b''
                # e o loop continua, o que é bom para non-blocking.
                # Mas com timeout > 0, se nada for lido, é um timeout.


            # Pequena pausa para não sobrecarregar o CPU, opcional
            # time.sleep(0.01)

    except KeyboardInterrupt:
        print("\nInterrupção pelo usuário. Fechando porta serial.")
    except Exception as e:
        print(f"Ocorreu um erro: {e}")
    finally:
        if 'ser' in locals() and ser.is_open:
            ser.close()
            print(f"Porta serial {SERIAL_PORT} fechada.")

if __name__ == "__main__":
    main()