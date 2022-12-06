#!/bin/bash
# "program neve:$0"
# "parameterek szama:$#"
# "1.parameter:$1"
# "2. parameter:$2"
# "utolso parameter szovege:${!#}"
# "utolso parameter szovege: eval "FAJLNEVE=$"$# "
# "osszes parameter kiiratasa:$@"
# "osszes parameter kiiratasa:$*"
# "a program neve:$0"
# "exit status of last command:$?"
# "process id of the shell program: $$"
# "utolso parameter: ${#}"
# eval "FAJLNEVE=$"$#

# signals
# exit parancs      EXIT          0 a program normal bfejezodesekor,vagy exit parancs kiadasakor
# KIEJELENTKEZES    SIGHUB        1 megszakadt a kapcsolat a terminallal
# CTRL+C            SIGINT        2 felhasznalo leallitotta a programot
# CTRL+\            SIGQUIT       3 kilepes a billentyuzetrol
# KILL              SIGKILL       9 azonnali, feltetel nelkuli leallas
# shutdown/kill     SIGTERM      15 futas befejezese
#                   DEBUG           nyomkovetes, minden parancs utan vegrehajtodik

# trap kezeli a signalokat
# trap '' jel-neve vagy szama:
#      a fenti parancs csak elkapja a signalt,de nem csinal vele semmit,vagyis figyelmen kivul hagyja
# trap eredeti jelenteset kapcsolja vissza:
#       trap jel-neve vagy szama
# a trap a program bmely pontjan hasznalhato, ki es bekacspolhato

# feladat : signalok kezelese
# ha elkapunk egy-egy/osszes signalt,akkor azon signal normal mukodeset felulirjuk
# pl. az alabbi programnal eloszor egy uzenetet irunk ki,majd vegrehajtjuk a tenyleges mukodwset a signalnak
trap 'echo "EXIT jel erkezett"' EXIT # 15-os jel
trap 'echo "SIGINT jel erkezett"' SIGINT # 2-os jel
trap 'echo "SIGQUIT jel erkezett"' SIGQUIT # 3-os jel
trap 'echo "SIGTERM jel erkezett"' SIGTERM # 15-os jel
echo "a folyamat azonosito: $$"
read -p "a kilepeshez usse le az ENTER-t"






















