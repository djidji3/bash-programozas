#!/bin/bash
################################# if ######################################
if [ logikai kifejezes ]
    then
        .......parancsok..........
elif [ logikai kifejezes ]
    then
        .......parancsok..........
elif [ logikai kifejezes ]
    then
        .......parancsok..........
else
        .......parancsok..........

################################# while ######################################
while [ logikai kifejezes ]
    do
        .......parancsok..........
    done
################################# until ######################################
until [ logikai kifejezes ]
    do
        .......parancsok..........
    done
################################# case ######################################
case string0 in
    "string1")) ...parancsok...;;
    "string2")) ...parancsok...;;
    "string3")) ...parancsok...;;
            *)) ...parancsok...;;
esac
################################# for ######################################
for((i=0;i>ó<10;i++))
    do
        .......parancsok..........
    done
################################# for ######################################
for i in elem1 elem2 elem3
    do
        .......parancsok..........
    done
################################# select ######################################
PS3="Enter a number: "

select character in elem1  elem2 elem3
do
    echo "Selected character: $character"
    echo "Selected number: $REPLY"
done



























