#!/usr/bin/env bash
echo a szoveg idezojelek nelkul is megadhato $PWD
echo "valtozo igy is megadhato $PWD"
echo 'aposztrofok koze irva, a valtozot nem helyettesiti be $PWD'
echo "valtozo igy is megadhato ${PWD}"
# egy valtozoba egy komplett parancsot is beletehetunk
kanizsa=`dig @8.8.8.8 hdxx8bxh2m1.sn.mynetname.net +short`
e=$((5 * 7))

current-time=

# ha irtunk a scriptet akkor azt olyan helyen kell elhelyezni, ahol a bash keresni fogja a programokat
# vagy beletessszuk vmelyik konyvtarba,ami szerepel a $PATH valtozoban megadottakkal
# pl: /usr/local/bin
# vagy hozzaadunk azt a konyvtarat, ahol ezt a scriptet elhelyezzuk
# ha az alabbi sort beletessszuk pl a sajat .bashrc fajlba
export PATH=~/bin:"$PATH"
# majd ujraolvastatjuk a basrc fajlunkat
. .bashrc
# vagy majd ujraolvastatjuk a basrc fajlunkat igy
source .bashrc



