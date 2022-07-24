#!/bin/bash
# tombmegadas
tomb=("egy" "ketto" "harom")

# tombmegadas
array[0]=egy
array[1]=ketto
array[2]=harom

# hivatkozas tomb elemre
echo ${tomb[1]}
echo ${array[1]}
echo tomb osszes eleme: ${array[@]}
echo tomb elso eleme: ${array[$1]}
#---------------------------------------
# tombmegadas
Etelek=(
        "Halsalata"
        "Zöldségkör"
        "Húsleves"
        "Narancs-joghurt"
)
 
for item in ${Etelek[*]}
do
   echo $item
done
#----------------------------------------
etelhozzavalok=(
        "Halsaláta (uborka, tonhal, tejföl)"
        "Zöldségkör (tejföl, túró, zöldségek)"
        "Húsleves"
        "Narancs joghurt"
)
 
n=${#etelhozzavalok[@]}
 
for (( i=0; i<n; i++))
do
    echo ${etelhozzavalok[$i]}
done

#-------------------------------------------

















