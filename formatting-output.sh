#!/bin/bash
# szovegkimenet formazasa

# sorok beszamozasa - nl
ls -l | nl
nl szoveg.txt

# sort
# defautlban abc sorrendbe rendez
# parameterkent megadhato hogyadik oszlop (k) alapjan rendezzen
cat /etc/services | sort k1

# printf formazza a kimenetet igenyeink szerint 
# % jel utan mondjuk meg hogy mire formazza a soronkovekezo szoveget (sorrend szamit)
# d decimal
# f floating
# o octal
# s string
# x hexa
# X hexa nagybetuvel
printf "%s %d, %f, %o, %s, %x, %X\n" szoveg 38 38 38 38 38 38













