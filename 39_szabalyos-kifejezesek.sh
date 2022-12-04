# amennyiben egy hasznalt karaktert nem sima karakterkent akarunk hasznali, azaz hasznalni mint kulenleges vezerlo karaktert
# ugy abban az esetben le kell vedenunk a \ karakterrel
# alapelemek
# "x"   tetszoleges karakter
# \c    ha a c karakternek vmilyen kulonleges jelentese lenne akkor levedenenk es sima karakterre alakitanank
#  ^    sor elejere illeszkedik
# $     sor vegere illeszkedik
# .     egy bmilyen karakterre illeszkedik
# [ab]  bmely karakterre illeszkedik ami a [] ben van
# [^ab]  bmely karakterre illeszkedik ami NINCS a [] ben van
# [a-z]  bmely karakterre illeszkedik ami  a sorozaton belul van (pl abc, vagy szam)
# [a-zA-Z0-9]  bmely karakterre illeszkedik ami  a sorozaton belul van (pl abc, vagy szam)

# jelentes modositok
# *     ismetlo karakter. A * elott allo karakter akarhany (akar 0) elofordulasara illeszkedik = {0,}
# +     ismetlo karakter. A + elott allo karakter legalabb egyszeri elofordulasara illeszkedik = {1,}
# .     egyetlen bmilyen   karakter
# (...) egy egysegkent kezelt karakter csoport
# '\(23\)\+' a 23 legalabb egyszer forduljon elo benne

# illeszkedesek szamanak megadasa
# {x}     illeszkedesek pontos szamat adhatjuk meg. Az x mondja meg hogy pontosan ennyiszeres elofordulast varunk el
# {x,}    illeszkedesek legalabb szamat adhatjuk meg. Az x, mondja meg hogy legalabb ennyiszeres elofordulast varunk el
# {x,y}   illeszkedesek legalabb es maximun szamat adhatjuk meg. Az x,y mondja meg hogy minimun es maximum ennyiszeres elofordulast varunk el
# ezeket mindig hasznalhajuk, ekkor nem kell a  * es a  + karakterekkel dolgoznunk

# kifejezes1 | kifejezes2   logikai vagy

