#!/bin/bash

PS3="Valassz egy menüpontot: "

select MENUPONT in elem1  elem2 elem3
do
    echo "A kivalasztott menupont: $REPLY) $MENUPONT"
    
done



























