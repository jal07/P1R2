import socket
import mysql.connector

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# Bind the socket to the port
server_address = ('localhost', 10000)
print('starting up on {} port {}'.format(*server_address))
sock.bind(server_address)

# Listen for incoming connections
sock.listen(1)

while True:
    # Wait for a connection
    print('waiting for a connection')
    connection, client_address = sock.accept()

    miConexion = mysql.connector.connect(host='localhost', user='root', passwd='root', db='proyecto1')
    cur = miConexion.cursor()
    contador = 0
    try:
        print('connection from', client_address)

        # Receive the data
        messagesIP = connection.recv(1024)
        print('received {!r}'.format(messagesIP))

        while contador != 50:
            cur.execute("SELECT hexadigest FROM Firma")
            fila = cur.fetchall()

            for hexadigest in fila[contador]:
                #print('sending {!r}'.format(hexadigest).encode("ascii"))
                connection.sendall(format(hexadigest).encode("ascii"))# Receive the data in small chunks and retransmit it

            print('sending data back to the client')
            contador = contador + 1

        print('no data from', client_address)
        miConexion.close()
    finally:
        # Clean up the connection
        connection.close()
        
