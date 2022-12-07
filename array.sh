#!/bin/bash
# tombok letrehozasa:
szamokTombje=(1,2,4,10,20)
vegyesTomb=(1,2,'three',4,five,'true')

echo $szamokTombje # 1,2,4,10,20
echo $vegyesTomb # 1,2,three,4,five,true

################## elem hozzaadasa egy meglevo tombhoz
vegyesTomb+=( "ujElem" )
echo $vegyesTomb # 1,2,three,4,five,true ujElem

################ a tomb osszes, vagy egy elemenek lekerdezese
echo "A vegyesTomb osszes eleme:${vegyesTomb[@]}" 
echo "A vegyesTomb tomb indexei:${!vegyesTomb[@]}" 
echo "A szamokTombje 3. eleme:${szamokTombje[2]}" 

############### for ciklus a tomb elemein ##############
for i in ${!szamokTombje[@]} ; 
    do
        echo "a tomb eleme: {$szamokTombje[$i]} "
    
    done

menu_from_array() {
    select item; do
        # Check the selected menu item number
        if [ 1 -le "$REPLY" ] && [ "$REPLY" -le $# ]; then
            echo
            echo "The selected operating system is $item"
            break
        else
            echo "Wrong selection: Select any number from 1-$#"
        fi
    done
}

# # Declare the array
# linux=('Ubuntu' 'Linux Mint' 'CentOS' 'Debian')

# # Declare an other array
# items=('item1' 'item2' 'item3' 'item4')

# # hivjuk meg a fuggvenyt,parameterkent megadva a felhasznalni kivant tomb elemeit
# #menu_from_array "${linux[@]}"
# menu_from_array "${items[@]}"
