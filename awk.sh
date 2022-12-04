# teljes erteku szovegszerkeszto es feldolgozo alkalmazas
# fajlbol es bemeneten is kepes fogadniadatokat
# ismeri a valtozokat, fuggvenyeket, eljarasokat, ciklusokat
# ha programot irunk akkor azt igy adjuk meg : #!/bin/awk -f
# a feldolgozas soronkent tortenik, a legkisebb feldolgozasi egyseg a mezo (egy-egy egybefuggo szo )
# a sor mezoire igy hivatkozhatunk: $i,ahol az i sor mezojenek sorszama
# $0 a teljes sort jelenti


# kiirja a 2. es 3. mezoket
echo 234576 szoveg 3mezo  | awk  '{print $2" " $3}'
echo "64 bytes from ns.zalaszam.hu (109.69.119.29): icmp_seq=2 ttl=60 time=2.36 ms" | awk '{print $5}'
echo 234576     szoveg   3mezo  | awk  '{print $2" " $3}'

# a kimenet defaultban mindig pontosan egy szokoz lesz az elvalaszto karakter,akar mi is volt a bemeneten
echo 234576     szoveg   3mezo  | awk  '{print $1,$2, $3}'

# valtozokat is deklaralhatunk, majd felhasznalhatjuk
cat telefonszam.txt | awk '{szoveg=sor ; szam=12; print $2,$1,szoveg,szam}'
# vagy a program elejen -v kapcsoloval erteket adunk a valtozoknak es utanna jon a feldolgozas
cat telefonszam.txt | awk -v szoveg=sor -v szam=12 '{print $2,$1,szoveg,szam}'

# fontossabb belso valtozok
# NF - mezok szama a pillanatnyi sorban
# NR - az eppen feldolgozando sor sorszamat tartalmazza
# RS - record separator
# FS - bemeneti record elvalaszto

# NR belso valtozo ,ami az eppen feldolgozando sor sorszamat tartalmazza
ls -l | awk '{print NR," ",$9 }'

# BEGIN es END blokkok
# BEGIN-t hasznalhatjuk arra hogy a foprogram vegrehajtasa elott, vmit csinaljon
# END-t hasznalhatjuk arra hogy a foprogram vegrehajtasa utan, vmit csinaljon
# ... | awk 'BEGIN' {bevezeto muveletek} {foprogram} END {zaro muveletek}''
cat telefonszam.txt | awk 'BEGIN {szoveg="sor" ; szam=12}  {print $2,$1,szoveg,szam}'

# matematikai muveletek
# osszeadja a konyvtarban levo fajlok meretet es a vegen kiiraja a teljes meretet
ls -l | awk 'BEGIN{meret=0 } {meret=meret+$5} END{print meret}'

# ha pontosak akarunk lenni,akkor csak a fajlokon vegezzuk el ezen muveleteket
ls -l | grep '^-'| awk 'BEGIN{meret=0 } {meret=meret+$5} END{print meret}'

# ha pontosak akarunk lenni,akkor csak a fajlokon vegezzuk el ezen muveleteket, mindez awk segitsegevel
# a foprogram blokk ele kell tennunk a cimzest, igy csak az illeszkedo sorokon fog vegrehajtodni
ls -l | awk 'BEGIN{meret=0 } /^-/  {meret=meret+$5} END{print meret}'

# felteteles utasitas
# illeszkedes jele: "~"
# nem illeszkedes jele: "!~"
ls -l | awk 'BEGIN{meret=0 } {if($0!/^d/) meret=meret+$5} END{print meret}'
ls -l | awk 'BEGIN{max=0 } {if($5>max) max=$5 ; nev=$9} END{print "A legnagyobb fajl a konyvtarban: "max" fajl meretu. \nA neve: "nev""}'
 # megnezi az elso mezot hogy fajl-e (-), ha igen akkor hozzaadja a meretet, az osszeghet
 ls -l | awk 'BEGIN{osszeg=0 } {if($1~/^-/) {osszeg+=$5}} END{print "fajl meret osszege a konyvtarban: "osszeg" "}'

# ciklus












































