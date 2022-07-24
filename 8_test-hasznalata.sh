#!/bin/bash
echo "test hasznalata [expression] hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

if [ 5 -gt 4 ];
echo "5 nagyobb mint 4"
else
echo "a feltetel nem igaz"