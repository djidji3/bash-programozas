#!/bin/bash
echo "for ciklus a seq hasznalataval"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

for i in `seq 1 10`
do 
    echo $i
done

# egy konyvtar tartalman is vegig mehetunk, amit akar parameterkent is megadhatunk
for i in ${1}
do
    echo -e "`ls -lha ${i}`\n"
done