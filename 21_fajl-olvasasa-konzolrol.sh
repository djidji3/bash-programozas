#!/bin/bash
echo "fajl olvasasa"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"
while read SOR
do
    echo $SOR
done < gy.txt