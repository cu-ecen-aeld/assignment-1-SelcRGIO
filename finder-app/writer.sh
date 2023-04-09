#!/bin/sh

if [ $# -ne 2 ]; then
    echo "ERROR: Not enough arguments"
    exit 1
fi

WRITEFILE=$1
WRITESTR=$2

DIR=$(dirname ${WRITEFILE})

if [ -d ${DIR} ]; then
        if [ $(echo "${WRITESTR}" > $WRITEFILE) ]; then
        echo "ERROR: File could not be created"
        exit 1
    else
        exit 0
    fi
else

    mkdir -p ${DIR}

    if [ $(echo "${WRITESTR}" > $WRITEFILE) ]; then
        echo "ERROR: File could not be created"
        exit 1
    else
        exit 0
    fi
fi
