#!/bin/bash
echo "for ciklus a seq hasznalataval"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

for (( i=0; i<10; i++))
do
    echo ${i}
done