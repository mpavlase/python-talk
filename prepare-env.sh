#!/bin/bash

VENV=venv
PIPREQ=requirements.txt

! [[ -d $VENV ]] && virtualenv $VENV

source $VENV/bin/activate
pip install -r $PIPREQ

echo "Environment is ready, let's play :-)"
echo "To leave virtual env, type 'deactivate'"
