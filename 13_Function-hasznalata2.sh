#!/usr/bin/env bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

function fuggvenynev(){
   DATE=`date "+%Y.%m.%d %T"`
   UPTIME=uptime
   echo "Az aktualis datum,ido ${DATE}" 
   echo "A gep uptime adatai: " `uptime` ${UPTIME}
   cat << EOF >index.html
   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>script in the html file</title>
</head>
<body>
   echo "Az aktualis datum,ido ${DATE}"
   echo "A gep uptime :${UPTIME}"
    
</body>
</html>
EOF
    return
}

fuggvenynev
