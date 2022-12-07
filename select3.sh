#!/bin/bash

PS3="Valassz egy menüpontot - az elem3-at valasztva tovabbi elemeket tudsz kivalasztani : "

select MENUPONT in elem1  elem2 elem3
do
    case  $MENUPONT in
        elem1)     echo "A kivalasztott menupont: $MENUPONT";;
        elem2)     echo "A kivalasztott menupont: $MENUPONT";;
        elem3)     echo "A kivalasztott menupont: $MENUPONT"
                   select ALELEM in  alelem1 alelem2 alelem3
                    do
                        case $ALELEM in
                            alelem1) echo "az $ALELEM elemet valasztottad";;
                            alelem2) echo "az $ALELEM elemet valasztottad";;
                            alelem3) echo "az $ALELEM elemet valasztottad";;
                                  *) echo "Nincs ilyen alelem: $ALELEM "; exit 2 ;;
                        esac
                    done
                    ;;
            *)     echo "Ilyen menupont nincs is !!!"; exit 1 ;;
                    
    esac
done



























