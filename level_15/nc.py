#!/usr/bin/env python
import SocketServer
import time
import threading

class Service(SocketServer.BaseRequestHandler):
    def handle(self) :
        entered=self.receive()
        if(entered=='e280510d058c72638d702ecd8bdd4893'):
            flag=open('/opt/scripts/level15/flag.txt','r')
            self.send(flag.read())
        else:
            rickroll='Open the url to get the passowrd : shorturl.at/qGKT0'
            self.send(rickroll)
    
    def receive(self,prompt = ">"):
        self.send(prompt, newline= False)
        return self.request.recv(4096).strip()

    def send(self,string,newline = True):
        if newline: string = string + "\n"
        self.request.sendall(string)

class ThreadedService(SocketServer.ThreadingMixIn, SocketServer.TCPServer,SocketServer.DatagramRequestHandler):
    pass


def main():
    port=4242
    host='0.0.0.0'

    service = Service

    server = ThreadedService((host,port),service)
    server.allow_reuses_address=True

    server_thread = threading.Thread(target=server.serve_forever)
    server_thread.daemon = True
    server_thread.start()
    print('Server Started on port',port)


    while (True): time.sleep(60)

if (__name__ == "__main__"):
    main()
