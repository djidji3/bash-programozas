#!/bin/bash

# "Valtozo megletenek ellenorzese scriptbol"

: "${DATE:=$(date)}"

echo "Ha a DATE valtozo erteke ures,akkor az erteke legyen ennek a parancsnak a kimenete: date"

echo "hibauzenetet is adhatok - a kerdojel utan - ha nincs beallitva az adott valtozo:"
NAME=$1
: ${NAME:?"A nev be kell legyen allitva, esetunkben ez a script  elso parametere!!!"}
echo "A NAME valtozo erteke ${NAME}"