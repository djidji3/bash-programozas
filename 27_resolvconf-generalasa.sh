#!/bin/bash

file="/etc/resolv.conf"
# ha a fajl irhato akkor modositom a tartalmat
if [ -w ${file} ]; then
	cat <<EOF > $file 
nameserver 8.8.8.8 
EOF
echo a ${file} tartalma:
cat /etc/resolv.conf

# egyeb esetben -ha a fajl nem letezik,akkor letrehozom es modositoma tartalmat
elif [ ! -e ${file} ]; then
    touch /etc/resolv.conf
    cat <<EOF > $file 
nameserver 8.8.8.8 
EOF
echo a ${file} tartalma:
cat /etc/resolv.conf

# ha fajlt nem irhato
elif [ ! -w ${file} ]; then
echo Nincs jogom a ${file} fajlt irni!!!
fi 




