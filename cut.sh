# a kapott allomany egy mezojenek kiszurese
cat /etc/passwd | cut -f 1 -d ':'
 -f hanyadik mezore van szuksegem (tobbet is  felsorolhatok 1,7)
 -d mi legyen a delimeter

 # keszithetunk egy uj fajlt is a kivagott mezokbol
cat /etc/passwd | cut -f 1,4,7 -d ':' > masikfile.txt

