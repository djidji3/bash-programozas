#!/bin/bash

# Naplófájl folyamatos figyelése
    STR="so"
# folyamatosan figyelek egy fajlt, aminek a sorait adadom read -nek,ami kapott allomany egy-egy sorat olvassa be
    tail -f gy.txt |  while read -r SOR
    do
    # ha az adott sorban nincs egyezes a megadott string-el akkor lep a kovetkezo sorra
        [[ "$SOR" != *$STR* ]] && continue
    	echo "Volt bejegyzés: ${SOR}"
    done
    exit

#------------------------------------

# Naplófájl egyszeri atvizsgalasa
    STR="so"
# megjelenit egy fajlt, aminek a sorait adadom read -nek, ami kapott allomany egy-egy sorat olvassa be
    cat gy.txt |  while read -r SOR
    do
    # ha az adott sorban nincs egyezes a megadott string-el akkor lep a kovetkezo sorra
        [[ "$SOR" != *$STR* ]] && continue
    	echo "Volt bejegyzés: ${SOR}"
    done
    exit

















