#!/bin/sh

if [ $# -ne 2 ]; then
    echo "ERROR: Not enough arguments"
    exit 1
fi

FILESDIR=$1
SEARCHSTR=$2
X=0 
Y=0

if [ -d ${FILESDIR} ]; then
    for i in $(grep -r ${SEARCHSTR} ${FILESDIR}* -c -h); do 
        X=$((X+1))
        Y=$((Y+i))
    done
    echo "The number of files are $X and the number of matching lines are $Y"
    exit 0
else
    echo "Path does not exist"
    exit 1
fi