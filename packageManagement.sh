#!/bin/bash
# csomag keresese egy repo-ban
apt update
apt-cache search search-string

# telepites csomag fajlbol
dpkg --install csomagnev

# telepitett csomag eltavolitas
apt remove csomagnev

# az adott rendszerhez elerheto frissiteseket telepiti, a sources.list fajlban megadott forrasokbol
# uj csomagokat is feltelepit ha a fuggosegek miatt szukseges,de soha nem tavolit el csomagot
# ha az uj csomagnak szukseges eltavolitani egy regi csomagok,akkor inkabb nem csinalja meg a telepitest
apt upgrade

# frissiti a teljes rendszert, uj csomagokat telepit, vagy torol ha szukseges
apt full-upgrade

# adott eltavolitott csomag, visszamaradt adatait, configfajlait torli ki
apt purge csomagnev

# eltavolitja azon csomagokat,melyek telepitesre kerultek vmilyen fuggoseg miatt, de mar nem szuksegesek, mert
# ezen csomagok kozben eltavolitasra kerultek,vagy megvaltoztak a fuggosegek
apt autoremove csomagnev

# info egy megadott csomagrol
apt show csomagnev

# csomagok listaja,az alabbi listak szerint
apt list -upgradeable
apt list -installed
apt list --all-versions

# direkt szerkeszti a source fajlt
apt edit-sources

# a csomaglistabol megjeleniti az adott csomag informaciot, fuggosegeit
apt-cache showpkg csomagnev

# az osszes telepitett csomag es azok fuggosegei
apt-cache dump

# a gyorsitotar nem kielegitett fuggosegeinek megjelenitese
apt-cache unmet

# kereses a gyorsitotarban
apt-cache search regex....

# egy csomag függõség listája, valamint az összes lehetséges egyéb csomagról, amely képes megfelelni ennek a függõségnek
# --installed < csak a telepitett csomagokat irja ki
apt-cache depends csomagnev
apt-cache depends --installed csomagnev

# egy csomag forditott függõségi listája
# --installed < csak a telepitett csomagokat irja ki
apt-cache rdepends csomagnev
apt-cache depends --installed csomagnev


