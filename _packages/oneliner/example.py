#!/usr/bin/env python

from SimpleXMLRPCServer import SimpleXMLRPCServer

server = SimpleXMLRPCServer(("localhost", 8001))
# example: pow(4) == 16
server.register_function(pow)
server.register_function(lambda x,y: x+y+123456, 'add')
server.register_multicall_functions()
server.serve_forever()
