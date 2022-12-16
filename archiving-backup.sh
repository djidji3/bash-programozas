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

###############################################################################################

# arhivalas - tar
# hasznalat: tar mode [options] pathname ...
# mode lehetseges esetei:
c : create
x :  extract
r :  append
t :  list
u : update, ha a fajl ujabb mint az arhive tartalom

# options - melyek megadasa mindig csak a mode megadasa utan lehetseges
f : fajlnev
g : incrementalfile - 
--level=0 : az incrementalis menteskor csonkolja a kiirt fajlokat (vagyis az idokozben torolt fajlok nem fognak latszodni)
--acls : engedelyezi a posix acl-ek menteset
--xattrs : exended attributumok engedelyezese
-a : auto compress
-z : gzip tomorites
-N : DATE megadott datumnal ujjabb allomanyokat tarol csak



# tar allomany letrehozas a megadott konyvtar teljes tartalmarol
tar -cf teszt.tar /etc

# tar allomany letrehozasa egy find segitsegevel eloszort lista alapjan ("-T -" megmondja hogy a csoben kapott adatokkal dolgozzon)
find /teszt -name '047' | tar czf vmi.tar.gz -T -

# listazz egy meglevo arhivum tartalmat
tar -tvf teszt.tar
