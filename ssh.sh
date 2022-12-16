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

#####################
archiving-backup.sh
#!/bin/bash

# gzip,bzip fajl tomorites tomorites - ha mappakat is kell tomoriteni akkor eloszor a tar programot hasznaljuk
gzip file.txt
bzip2 file.txt

# gzip,bzip kitomorites 
gunzip file.txt.gz
gzip -d file.txt.gz
bzip2 -d file.txt.gz

# tomoritett fajl listazasa
gunzip -c file.txt.gz | less
zcat file.txt.gz | less

# pipe segitsegevel
ls -lha /etc | gzip > etc.gz

# gzip opciok
-c tartsa meg az eredetifajl is a kicsomagolas utan, vagy listazza ki a tomoritett fajlt
-f force vagyis akkor is megcsinalja ha mar letezik a fajl
-l listazza a tomorites merteket is
-t ellenorzi a tomoritett fajl integritasat
-number tomorites mertekenek megadasa