#!/bin/bash

pygmentize < example.sh
pygmentize -O style=monokai -o demo.png example.py
pygmentize -O full -o demo.html example.py
pygmentize -O full,linenos=True,style=colorful -o demo.html example.py
pygmentize -O full,style=monokai -F whitespace:spaces=True -o demo.html example.html
