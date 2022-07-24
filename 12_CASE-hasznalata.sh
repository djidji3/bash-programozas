#!/usr/bin/env bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "a DATE valtozot megadhatod az elso paramerkent, ha nem adod meg akkor itt beallitom"

case $1 in
    "")
	echo "Nem adtal meg napot"
    ;;

    "hetfo")
	echo "Hetfo a nap amit megadtal"
    ;;

    "kedd")
	echo "Kedd  a nap amit megadtal"
    ;;

    "szerda")
	echo "Szerda  a nap amit megadtaladtal"
    ;;

    "csutortok")
	echo "Csutortok a nap amit megadtal"
    ;;

    "pentek")
	echo "Péntek a nap amit megadtal"
    ;;

    "szombat")
	echo "Szombat a nap amit megadtal"
    ;;

    "vasarnap")
	echo "Vasarnap a nap amit megadtal"
    ;;

    *)
	echo "Na ez most mi: ${1} ??????"
exit 1
esac
