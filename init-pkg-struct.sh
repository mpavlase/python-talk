#!/bin/bash

# Requires pypi-cli

#hash pypi-cli 2>/dev/null
#if [[ $? -ne 0 ]]; then
#    echo '"pypi-cli" executable was not found. Please install it (pip install pypi-cli) before run this script.'
#    exit 1
#fi
export TMPDIR=/tmp

LIST=$(readlink -f modules.list)
TMP=$(mktemp pck-prepare.XXXXX)
OUT_DIR=packages

mkdir -p $OUT_DIR
pushd $OUT_DIR > /dev/null

cat $LIST | while read package; do
    # Skip blank lines or comments
    [[ -z $package ]] || [[ "${package:0:1}" == '#' ]] && continue

    mkdir -p $package/example
    pushd $package > /dev/null
    touch notes

    echo -n $package
    pypi info $package 2> $TMP | \
        head -n3 | \
        tail -n1 > description
    grep -q Skipping $TMP
    if ! [[ $? -eq 0 ]]; then
        # package was found on PyPi
        touch pip
        echo -ne '\t[pip]'
    else
        echo "TODO, it's built-in" > description
    fi
    echo ''
    popd > /dev/null
done

popd > /dev/null
rm $TMP
