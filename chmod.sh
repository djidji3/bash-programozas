#!/bin/bash
# chmod
# chmod user(u),group(g),other(o),all(a)     -+=rwx     fajlnev
# csoportnak,irasijog adasa
chmod g +w fajlnev

# csoportnak exact jog megadasa
chmod g =rw fajlnev

# csoport, es masok  jog megadasa, elvetele
chmod g -w o +r fajlnev

# konkret jog adas 
chmod 700 fajlnev














