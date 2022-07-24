#!/bin/bash
# indexalt tomb:
declare -a szamok
szamok+=35
szamok+=47
szamok+=1
echo ${szamok[@]} # 35471

#------------------------------------

# asszociativ tomb:
declare -A dolgozo
 
#egy érék hozzáadása:
dolgozo[fizetes]=3800000
echo dolgozo fizetes:  ${dolgozo[fizetes]}
 
#több érték hozzáadása:
dolgozo2=([nev]=János [telepules]=Szolnok [email]=janos@gov.hu )
echo dolgozo2 nev: ${dolgozo2[nev]}
echo dolgozo2 email: ${dolgozo2[email]}
echo dolgozo2 telepules: ${dolgozo2[telepules]}










