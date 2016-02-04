#!/usr/bin/env python

from zipfile import ZipFile
with ZipFile('newfile.zip', 'w') as myzip:
    myzip.writestr('demo.txt', 'Content is HERE!')

zf = ZipFile('file.zip', 'r')
print zf.namelist()

info = zf.infolist()[0]
print info.filename
print 'compres s.:', info.compress_size
print 'orig. size:', info.file_size

