#!/bin/bash

PS3="Valassz egy menüpontot: "

select MENUPONT in elem1  elem2 elem3
do
    case  $MENUPONT in
        elem1)     echo "A kivalasztott menupont: $MENUPONT";;
        elem2)     echo "A kivalasztott menupont: $MENUPONT";;
        elem3)     echo "A kivalasztott menupont: $MENUPONT";;
            *)     echo "Ilyen menupont nincs is !!!"; exit 1 ;;
                    
    esac
done



























