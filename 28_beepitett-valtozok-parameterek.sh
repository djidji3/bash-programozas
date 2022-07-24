#!/bin/bash

echo A script neve: $0 
echo 1. parameter: $1 
echo parameterek száma: $# 
echo az összes parameter: $@ 
echo az utolsó folyamat kilépési kódja: $? 
echo a script aktuális sora:  $LINENO 
echo hostname ahol fut a script: $HOSTNAME
echo a scriptet futtató felhasználó: $USER 	
echo a futtatás kezdete óta eltelt idő: $SECONDS
echo minden hivatkozáskor más véletlen számot ad: $RANDOM
echo "utolso parameter:${!#}"



