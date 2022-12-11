#!/bin/bash
# umask
# default ertek kiiratasa
umask

# 4.biten beallitahto a uid , gid, sticky bit

# setuid segitsegevel beallithato hogy egy vegrehajthatofile ne a programot futtato user jogaval fusson hanem pl. a root jogaval
# pl. chmod u+s programnev

# setgid segitsegevel beallithato hogy egy file vagy konyvtar joga ne a letrehozo tulajdonosra legyen 
# allitva hanem a file vagy konyvtar csoportjanak jogara
# megosztott konyvtarakon hasznos, ha egy csoport altal hasznalt konyvtarban levo allomanyokhoz
# a csoport osszes tagja hozza kell ferjen
# pl. chmod g+s programnev

# sticky bit segitsegevel egy konyvtarban letrehozott allomanyokhoz, csak a letrehozo fer hozza
# /tmp konyvtarben alkalmazzuk ezt a megoldast,a hozzaferes szabalyozasara















