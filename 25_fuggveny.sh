#!/bin/bash
function kiir() {
    echo $1
}
 
kiir "ezt irja ki, mert ez az elso parameter"
#-----------------------------
function dupla() {
		res=$(echo "$1 * 2" | bc)
		echo "$res"	
}
 
result=$(dupla 10)
echo $result

