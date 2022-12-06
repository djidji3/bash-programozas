#!/bin/bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

# if , test, && , || magyarazata
# felteteles elagazas formatuma

# if [ feltetel ]
#     then
#         ...csinald ezt...
#  elif [ feltetel ]
#      then
#         ...csinald ezt...
#  else
#         ...csinald ezt...
# fi

############## pelda ###############################

if [ $1 -gt $2 ]; then
    echo "$1 nagyobb mint $2"
elif [ $2 -gt $1 ]; then
    echo "$2 nagyobb mint $1"
else
    echo "$2 es $1 egyenlo"

fi

########################################################
# egyszerusites,mely ket elagazas eseten alkalmazhato
[ $1 -eq $2 ] && echo "ha a feltetel igaz,ezt hajtja vegre" || echo "ha a feltetel hamis,ezt hajtja vegre"
########################################################

