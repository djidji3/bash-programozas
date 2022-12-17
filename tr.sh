# tr karakter alapu keresesre/cserere hasznalhato
# pl. kisbetu nagybetu cserehez
echo "lowercases letters" | tr mitCserel mireCserel
echo "lowercases letters" | tr a-z A-Z
echo "lowercases letters" | tr [:lower:] A-Z
echo "Ukisbetu Lkisbetu" | tr [:upper:] _
echo "Ukisbetu Lkisbetu" | tr [:upper:] " "

echo "karakter eltolasos titkositasra is hasznalhato" | tr a-zA-Z n-za-mN-ZA-M
echo "xnenxgre rygbynfbf gvgxbfvgnfen vf unfmanyungb" | tr a-zA-Z n-za-mN-ZA-M

# megadott karakterek egymasutani ismetlodeseit is torolhetjuk a segitsegevel (-s)
echo "aaabbbcccaa" | tr -s ab














