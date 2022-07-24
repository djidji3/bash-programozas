#!/bin/bash
# tombhoz elemek hozzzaadasa:
dobasok=(1 5 4)
dobasok+=(7 8)
echo ${dobasok[@]}
# tomb uritese
dobasok=()
echo  ${dobasok[@]}


dobasok=(1 5 4 9 10 13 15)
echo tomb osszes eleme:${dobasok[@]}
echo a teljes tomb 2.indextol 3 elem :${dobasok[@]:2:3}

# tomb elem torlese
echo  ${dobasok[@]}
unset dobasok[0]
echo  ${dobasok[@]}

# tomb indexeinek kiiratasa
echo  a tomb ertekei: ${dobasok[@]}
echo  a tomb indexei: ${!dobasok[@]}

# egesz tomb torlese
unset dobasok








