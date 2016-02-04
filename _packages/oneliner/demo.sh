#!/bin/bash

# we all know 'nl'
nl example.py

# like 'nl'
python -m oneliner -ne '"%6d %s" % (NR, _)' example.py

# print filename before line
python -m oneliner -ne '"%s %6d %s" % (FN, NR, _)' example.py

# make output UPPERCASE
python -m oneliner -ne '"%6d %s" % (NR, _.upper())' example.py

# replace numbers to NUMBER
python -m oneliner -m re -ne "'%6d  %s' % (NR, re.sub('[0-9]+', 'NUMBER', _))" example.py
