#!/bin/bash
# 1.
echo 1. pelda
echo "arg1: $1"
echo "arg2: $2"
echo "arg count: $#"

# 2.
sor="1 2 3"
for s in $sor;
do 
    echo "s valtozo tartalma jelenleg:" $s
done

# 3.
sor=`ls`
for s in $sor;
do 
    echo "a konyvtarszerkezet aktualis eleme:" $s
done

# 4.
echo "4. pelda"
for ((i=0;i<10;i++));
    do
	echo $i
done
echo

# 5.
echo "5. pelda"
for  i in $(seq 130 -3 100);
    do
	echo $i
done

# 6.
echo 6. pelda
for f in $(ls);
do 
    file $f
done

# 7. pelda InputFileSeparator
old=$IFS
IFS=$'\n'
for f in $(ls)
do
    file	$f
done
IFS=$old

# 8. pelda while cikuls
C=0
while [ $C -lt 10 ]; 
do
    echo a szamlalo erteke: $C
    let C++
done


# 9. pelda until cikuls
C=0
until [ ! $C -lt 10 ]; 
do
    echo a szamlalo erteke: $C
    let C++
done

# 10. pelda vegtelen ciklus
# while true; do
# ....
# done


















