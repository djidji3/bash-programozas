#!/bin/bash
# modszerek identitas valtasra
# login,su, sudo
# su parancs egy masik userre valo valtast jelent egy uj shellben, vagy egyetlen parancs vegrehajtasat
# a su bekeri azon user jelszavat, akire valtani akarunk
su [-[l]] [user]
    # -l :login shell kap a megadott user
su -
    # root userre fog valtani


# sudo program segitsegevel a root be tudja allitani a /etc/sudoers fajlban hogy milyen programot,
# milyen user hajthat vegre, kell e hozza jelszot megadnia
# sudo program, a sudo-t indito felhasznalo sajat jelszavat keri be (ha a NOPASSWD opcio nincs hasznalva)

# program futtatasa egy user neveben
# sudo -u user=usernev programnev

# shell keres - parameter nelkul root user shelljet keri
# sudo -s












