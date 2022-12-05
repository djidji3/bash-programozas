# matematikai muveletek vegzesere
 echo `expr 2 + 4`
# veletlenszam generalas 0-9 kozott
echo $((0 + $RANDOM % 9))

# veletlenszam generalas 1-90 kozott
echo $((1 + $RANDOM % 90))

# veletlen generator /dev/random es a /dev/urandom
dd if=/dev/urandom count=4 bs=1 of=/home/valaki/randomfile






















