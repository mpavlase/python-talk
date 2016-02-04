#!/bin/sh

LIST=demo.list
OUTPUT=demo.notes
DEMO=demo.py

cat $LIST | while read line; do
    echo $line >> $OUTPUT
    cat $line/$DEMO >> $OUTPUT
    echo '-----------' >> $OUTPUT
done
