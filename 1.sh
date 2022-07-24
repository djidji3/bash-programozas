#!/bin/bash

# 1.
echo "hello"

# 2.
echo -n "pelda "
echo "soremeles nelkul"

# 4.
echo -n "pelda "
echo "soremeles nelkul \n"

# 5.
echo -n "pelda "
echo -e "sortorest is \n lehet tenni bele"

# 6.
echo -e "sortorest is \t lehet tenni bele \t tabulatort is \t vagy mas egyebet"

# 7.
echo -e "7. pelda sortorest is \r \t lehet tenni bele \r \t tabulatort is \r vagy mast "

# 8.
echo "8. pelda"
a="szep"
echo -e "hello te $a \tvilag"

# 9.
echo "9. pelda"
a="alma"
b="korte"
lista="a b"
for item in $lista;
do
    echo "A valtozoban megnevezett valtozo tartalmat ird ki: ${!item} "
done

# 10.
echo "10. pelda"
szoveg=" egy    szoveg bhol      lehet a valtozoban

akar tobb       sorban      is"
echo $szoveg
echo '$szoveg'
echo "$szoveg"

# 11.
echo "11. pelda"
printf $szoveg
printf  "$szoveg"
echo
echo `date`
echo -e ${date}
echo `ls -lha`

