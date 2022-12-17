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
tar -create -file=teszt.tar /etc

# tar allomany letrehozasa egy find segitsegevel eloszort lista alapjan ("-T -" megmondja hogy a csoben kapott adatokkal dolgozzon)
find /teszt -name '047' | tar czf vmi.tar.gz -T -

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
 ssh nemcsics@localhost 'tar cgvzf --level=0 - teszt' | tar xzf  -

# listazz egy meglevo arhivum tartalmat
tar -tvf teszt.tar
 
 ########################################################################################

 # zip arhivalo es tomorito

 # hasznalat: zip options arhive inpath inpath ...
 # ahol az arhive egy letezo vagy uj arhive fajl es az inpath fajlok vagy konyvtarak (wilcard hasznalhato)
# ha mar letezik a megadott archive fajl, akkor lecsereli a tartalmat az ujra
# rekurziv tomoritett arhive fajlt keszit az /etc konyvtarrol:
zip -r etc.zip /etc
#ha modosult az etc konyvtar tartalma, majd ujra lefuttatjuk a fenti parancsok,akkor a valtozasokat teszi  bele a tomoritett fajlba
# de a torolt allomanyokat nem tavolitja el a tomoritett arhivalt fajlbol

# fajl lista hasznalata: -@ . Ekkor a szabvanyos kimenetrol (pipe) fogadja a fajlistat
find /etc -name $.conf | zip etc.zip -@

###############################################################################################
# unzip listazo, tesztelo, kicsomagolo program
# zip allomany kicsomagolasa
unzip etc.zip

# zip allomany listazasa
unzip -v etc.zip

#################################################################################################

# rsysnc : fajlok, konyvtarak szinkronizalasa
# hasznalat: rsync options source destination
# a forras es a cel lehet 
    #helyi file , konyvtar
    #tavoli file vagy konyvtar [user@]host:path
    # tavoli rsysnc server rsync://[user@]host[:port]/path

# helyi-helyi szinkronizalas (arhive,verbose opciokkal):
rsysnc [OPTION..] forrasKonyvtar celkonyvtar
# ujra kiadva a fenti parancsot, lathato hogy csak a valtozasokat visza at

##################################################################################################

# tavoli szinkronizalasa ket modszer van
# 1.
rsync [OPTION...]     SRC...      [USER@]HOST:DEST
rsync -av --rsh=ssh /etc /home   remoteGepNev:/backupKonyvtar
rsync -av --rsh='ssh nemcsics@localhost && sudo -s' /etc /home   remoteGepNev:/backupKonyvtar #kulcsos bejelentkezes,jelszo nelkuli sudo jog
rsync -av -e ssh='ssh nemcsics@localhost && sudo -s' /etc /home   remoteGepNev:/backupKonyvtar #kulcsos bejelentkezes,jelszo nelkuli sudo jog
rsync -av -e ssh='ssh -p 2222' /etc /home   remoteGepNev:/backupKonyvtar #kulcsos bejelentkezes,jelszo nelkuli sudo jog

# 2.
# egy rsync server van telepitve a tuloldali rendszeren, mely folyamatosan figyeli a bejovo rsync kereseket
# daemon modban az /etc/rsyncd.conf fajlt be kell allitani - igy lesz egy module amihez kapcsolodhat a kliens
# daemon modban a 873/tcp portot engedelyezni kell befele
rsync [OPTION...] rsync://[USER@]HOST[:PORT]/SRC...        [DEST]
rsync   -av       rsync://remoteGepnev/mentendoKonyvtar  mentesKonyvtar
rsync   -av       host::src                                 /dest
rsync   -av       rsync://remoteGepnev::module              /dest #module = /etc/rsyncd.conf fajlban meghatarozott [] resszel
# egyebkent a tavoli gepen futo daemon moduljait ki is irathatjuk:
rsync rsync://tavoliGepnev
   # az eredmeny esetunkben ez lesz:  teszt     teszt konyvtar a menteshez

# ajanlatos hasznalni egy password-ot a mentes soran, melyet ezen opcioval adhatunk meg: --password-file

# fontosabb opciok:
# -v verbose mode
# -q quiet mode
# -a achive  modd
# -r recursive mode
# -b backup mode
# -u update, csak a valtozasokat viszi at
# -l linkeket is masolja
# -H hardlinkeket is masolja
# -p jogosultsagokat is masolja
# -E vegrehajthatosagot is masolja
# -A acl-eket is masolja
# -X xattrs is masolja
# -o tulajdonost is masolja
# --dry-run mi lenne ha vegrehajtana a parancsot
# --rsh=COMMAND a remote shellt tudom megadni
# -z tomoriti az atvitel soran a fajlokat
# --remote-options=OPTION olyan beallitasok amik csak a tuloldalon lesznek ervenyessek (logfile, fake super user, stb)
# -M OPTION olyan beallitasok amik csak a tuloldalon lesznek ervenyessek (--log-file, --fake-super, stb)
# --log-file=FILE log fajl megadasa
# --password-file=FIlE jelszo fajl megadasa
# 
# daemon-kenti futtatas eseten tovabbi opciok adhatoak meg
#--daemon rsync inditasa daemon-kent
# --config
# 
#
#
#
#
#
#
#
#
#
#




























































































