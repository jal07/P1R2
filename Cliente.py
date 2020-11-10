import socket
import shutil
import hashlib
import PySimpleGUI as sg
from tkinter import *
from tkinter import messagebox as MessageBox

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# Connect the socket to the port where the server is listening
server_address = ('localhost', 10000)
print('connecting to {} port {}'.format(*server_address))
sock.connect(server_address)

#shutil.copy(file_path, 'C:/Users/javendano/PycharmProjects/Proyecto1Redes2/Cliente')

layout = [[sg.Text('Mantenga su sistema seguro', size=(30, 1))],
              [sg.Text('Analicemos un archivo', size=(17, 1)), sg.InputText(disabled=bool(True)), sg.FileBrowse()],
              [sg.Submit(size=(17, 1), )]]

window = sg.Window('ANTIVIRUS 20-20', layout)
event, values = window.read()
window.close()
file_path = values[0]  # get the data from the values dictionary
print(file_path)

with open(file_path, "rb") as f:
    file_hash = hashlib.md5()
    while chunk := f.read(8192):
        file_hash.update(chunk)

# print(file_hash.digest())
print(file_hash.hexdigest())  # to get a printable str instead of bytes


try:
    seguro = 1
    contador = 0

    # Send data
    nombre_equipo = socket.gethostname()
    direccion_equipo = socket.gethostbyname(nombre_equipo)
    print("La IP es: % s" % direccion_equipo)
    messageIP = b'This is the message.  It will be repeated.'
    messageIP = direccion_equipo
    print('sending {!r}'.format(messageIP))
    sock.sendall(messageIP.encode())

    while contador != 50:
        data = sock.recv(1024)
        print('received {!r}'.format(data))
        if file_hash.hexdigest() == data.decode():
            seguro = 0
        contador = contador + 1

finally:
    print('closing socket')
    print(seguro)
    if seguro == 0:
        print("ADVERTENCIA: El archivo analizado no es seguro y puede significar una amenaza para su equipo")
        MessageBox.showwarning("ADVERTENCIA", "El archivo analizado no es seguro y puede significar una amenaza para su equipo")  # título, mensaje
    else:
        print("El archivo analizado es seguro")
        MessageBox.showinfo("RESULTADO","El archivo analizado es seguro")

sock.close()