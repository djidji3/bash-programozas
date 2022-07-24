#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "A script neve: $0 a parameterek szama: $#"
until [[ $# -lt 1 ]] ;
do
    echo "Aktualis parameter ${1}"
    shift
done