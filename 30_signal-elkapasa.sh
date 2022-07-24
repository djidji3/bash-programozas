#!/bin/bash
echo A script neve: $0 
echo paramét1: $1 
echo argumentumok száma: $# 
echo az összes argumentum: $@ 
echo az utolsó folyamat kilépési kódja: $? 
echo a script aktuális sora:  $LINENO 
echo hostname ahol fut a script: $HOSTNAME
echo a scriptet futtató felhasználó: $USER 	
echo a futtatás kezdete óta eltelt idő: $SECONDS
echo minden hivatkozáskor más véletlen számot ad: $RANDOM

# shell-bol kiadott "trap -l" listazza alehetseges signalokat

# a fuggveny kiir egy szoveget a leallas elott, amikor megnyomja vki a Ctrl+C -t,ha megegyszer megteszi akkor a program leall

function csinaldezt()
{

        echo Akkor a program leall !!!

}

# meghivjuk a fuggvenyt es megadjuk hogy milyen signal eseten fusson le (SIGINT=Ctrl+C azaz program megszakitas):
trap csinaldezt SIGINT

# varakozik 5mp-et hogy legyen ido megnyomni a Ctrl+C gombot
sleep 5
#------------------------------------------------------

# meghivjuk a fuggvenyt es megadjuk hogy milyen signal eseten fusson le (EXIT=program leallas ):
touch /tmp/kilepeskortorlendo.txt
TORLENDO="/tmp/kilepeskortorlendo.txt"

# a fuggveny kiir egy szoveget, es elvegzi a takaritast, ami elott a program leall 
function kilepeskorfussle()
{
    echo letrejott a program mukodesehez szukseges fajlt:
    ls -lha /tmp ${TORLENDO}
    echo
    echo A program leall ! 
    echo A script ezen resze - bmi is legyen - beekelodik a program leallasa ele
    echo Torlom az program altal ideiglenesen letrehozott fajlt,igy a leallaskor kitakaritja a fajlrendszert
    rm ${TORLENDO}
    echo eltavolitasra kerult a program mukodesehez szukseges fajlt:
    ls -lha /tmp
    
}

# meghivjuk a fuggvenyt es megadjuk hogy milyen signal eseten fusson le (EXIT=amikor program leall):
trap kilepeskorfussle EXIT





