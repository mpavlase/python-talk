#!/bin/bash

VENV=venv
PIPREQ=requirements.txt

! [[ -d $VENV ]] && virtualenv $VENV

source $VENV/bin/activate
pip install -r $PIPREQ

if [[ "$?" == "0" ]]; then
    echo "============================================"
    echo "Environment is ready, let's play :-)"
    echo "To enter virtual env, type 'source $VENV/bin/activate'"
    echo "To leave virtual env, type 'deactivate'"
else
    echo "Something went wrong, sorry"
fi
