#!/usr/bin/env python

# some comment as a example
from markdownify import markdownify

with open('example.html') as f:
    lines = ''.join(f.readlines())
    md = markdownify(lines)
    print md

class MyClass(object):
    def __init__(self):
       # TODO: write something!
       pass
