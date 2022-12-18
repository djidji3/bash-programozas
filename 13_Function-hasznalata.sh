#!/usr/bin/env bash
echo "kornyezeti valtozok, DATUM hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

# formatuma ez
function fuggvenynev(){
    parancsok
    return
}

# formatuma vagy ez
fuggvenynev() {
    parancsok
    return
}