#!/bin/bash
# formatum: ssh user@remoteHostName 
# formatum: ssh user@remoteHostName tavoliParancsMelynekAKimeneteIttLathato
#           ssh akarki@8.8.8.8 'ls -lha'

# tunneling ssh-val - x windows forgalom tovabbitasanak engedelyezese
# inditunk egy programot a tavoli grafikus linux rendszeren es megjelenitjuk azt a helyi gepunkon
# ssh -X user@remoteHostName
# a tavoli grafikus programot ami az xload, inditsuk el
# xload
# igy a tavoli xload program elindul a tavoli gepen, es megjelenitjuk azt a helyi gepunkon

# masolas egy tavoli geprol  ("-" megmondja kimenetere/bemenetre tegye az allomanyt)
# a teszt mappa tartalmabol letrehoz egy tar allomany,amit a normal kimenetere kuld, amit a tar a normal bemeneten megkap es kicsomagol
# vagyis elkesziti ua.-t a mappaszerkezetet, azon a mappan belul, ahol vagyok
 ssh usrnev@tavoligepnev 'tar cf - teszt' | tar xf -

# masolas egy tavoli geprol GZIP tomoritessel  ("-" megmondja kimenetere/bemenetre tegye az allomanyt)
# a teszt mappa tartalmabol letrehoz egy tar allomany,amit a normal kimenetere kuld, amit a tar a normal bemeneten megkap es kicsomagol
 ssh usrnev@tavoligepnev 'tar czf - teszt' | tar xzf -

# Incrementalis masolas (g) egy tavoli geprol GZIP tomoritessel (z), verbose modban (v) ("-" megmondja kimenetere/bemenetre tegye az allomanyt)
# a teszt mappa tartalmabol letrehoz egy tar allomany,amit a normal kimenetere kuld, amit a tar a normal bemeneten megkap es kicsomagol
# Figyelem: ha a tavoli gepen torlesre kerult egy allomany, attol meg a helyi allomany megmarad!
 ssh nemcsics@localhost 'tar cgvzf --level=0 - teszt' | tar xzf  