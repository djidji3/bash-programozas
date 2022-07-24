#!/bin/bash
echo "shift es a parameterek hasznalata"
echo "program neve:$0"
echo "parameterek szama:$#"
echo "1.parameter:$1"
echo "2. parameter:$2"
echo "utolso parameter:${!#}"
echo "osszes parameter kiiratasa:$@"

echo "shift parancs segitsegevel tudom eggyel leptetni a parametereket"
echo "vagyis mindig a legelso parametert torli"
echo "igy egy-egy ujabb shift paranccsal be tuom jarni az osszes parametert "
shift
echo "ennyi paramater maradt: $@"
shift
echo "ennyi paramater maradt:$@"
shift
echo "ennyi paramater maradt:$@"
shift
echo "ennyi paramater maradt:$@"