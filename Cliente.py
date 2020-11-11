import socket
import hashlib
import PySimpleGUI as sg
import xlrd
from tkinter import messagebox as MessageBox

#global variable
messageStatus = 'Seguro'

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# Connect the socket to the port where the server is listening
server_address = ('localhost', 10000)
print('connecting to {} port {}'.format(*server_address))
sock.connect(server_address)

layout = [[sg.Text('Mantenga su sistema seguro', size=(30, 1))],
              [sg.Text('Analicemos un archivo', size=(17, 1)), sg.InputText(disabled=bool(True)), sg.FileBrowse()],
              [sg.Submit(size=(17, 1), )]]

window = sg.Window('ANTIVIRUS 20-20', layout)
event, values = window.read()
window.close()
file_path = values[0]  # get the data from the values dictionary

test = xlrd.open_workbook("C:/Users/javendano/PycharmProjects/Proyecto1Redes2/Business/Test.xlsx")
sh = test.sheet_by_index(0)

with open(file_path, "rb") as f:
    file_hash = hashlib.md5()
    while chunk := f.read(8192):
        file_hash.update(chunk)

# print(file_hash.digest())
#print(file_hash.hexdigest())  # to get a printable str instead of bytes
test = file_hash.hexdigest()
for rx in range(sh.nrows):
    if sh.cell(rowx=rx, colx=0).value == file_hash.hexdigest():
        messageStatus = "Peligroso"

nombre_equipo = socket.gethostname()
direccion_equipo = socket.gethostbyname(nombre_equipo)
#print("La IP es: % s" % direccion_equipo)
messageIP = direccion_equipo

# Send data
print('sending {!r}'.format(messageIP))
sock.sendall(messageIP.encode())
print('sending {!r}'.format(messageStatus))
sock.sendall(messageStatus.encode())
print('sending {!r}'.format(test))
sock.sendall(test.encode())

try:
    seguro = 1
    contador = 0

    while contador != 50:
        data = sock.recv(1024)
        print('received {!r}'.format(data))
        if file_hash.hexdigest() == data.decode():
            seguro = 0
        contador = contador + 1

finally:
    print('closing socket')
    if seguro == 0:
        print("ADVERTENCIA: El archivo analizado no es seguro y puede significar una amenaza para su equipo")
        MessageBox.showwarning("ADVERTENCIA", "El archivo analizado no es seguro y puede significar una amenaza para su equipo")  # título, mensaje
    else:
        print("El archivo analizado es seguro")
        MessageBox.showinfo("RESULTADO","El archivo analizado es seguro")

sock.close()
