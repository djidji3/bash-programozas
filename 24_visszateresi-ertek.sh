#!/bin/bash
mount //server/megosztasnev 
# ha a visszateresi ertek 0, akkor sikeres volt
if [[ $? == 0 ]]
then
    echo
    echo "A végrehajtás sikeres"
    echo
else
    echo
    echo "Hiba a végrehajtás során"
    echo
fi