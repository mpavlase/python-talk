#!/usr/bin/env python

from markdownify import markdownify

with open('example.html') as f:
    lines = ''.join(f.readlines())
    md = markdownify(lines)
    print md

