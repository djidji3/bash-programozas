
# rsysnc : fajlok, konyvtarak szinkronizalasa
# hasznalat: rsync options source destination
# a forras es a cel lehet 
    #helyi file , konyvtar
    #tavoli file vagy konyvtar [user@]host:path
    # tavoli rsysnc server rsync://[user@]host[:port]/path

# helyi-helyi szinkronizalas (arhive,verbose opciokkal):
rsysnc [OPTION..] forrasKonyvtar celkonyvtar
# ujra kiadva a fenti parancsot, lathato hogy csak a valtozasokat visza at

##################################################################################################

# tavoli szinkronizalasa ket modszer van
# 1.
rsync [OPTION...]     SRC...      [USER@]HOST:DEST
rsync -av --rsh=ssh /etc /home   remoteGepNev:/backupKonyvtar
rsync -av --rsh='ssh nemcsics@localhost && sudo -s' /etc /home   remoteGepNev:/backupKonyvtar #kulcsos bejelentkezes,jelszo nelkuli sudo jog
rsync -av -e ssh='ssh nemcsics@localhost && sudo -s' /etc /home   remoteGepNev:/backupKonyvtar #kulcsos bejelentkezes,jelszo nelkuli sudo jog
rsync -av -e ssh='ssh -p 2222' /etc /home   remoteGepNev:/backupKonyvtar #kulcsos bejelentkezes,jelszo nelkuli sudo jog

# 2.
# egy rsync server van telepitve a tuloldali rendszeren, mely folyamatosan figyeli a bejovo rsync kereseket
# daemon modban az /etc/rsyncd.conf fajlt be kell allitani - igy lesz egy module amihez kapcsolodhat a kliens
# daemon modban a 873/tcp portot engedelyezni kell befele
rsync [OPTION...] rsync://[USER@]HOST[:PORT]/SRC...        [DEST]
rsync   -av       rsync://remoteGepnev/mentendoKonyvtar  mentesKonyvtar
rsync   -av       host::src                                 /dest
rsync   -av       rsync://remoteGepnev::module              /dest #module = /etc/rsyncd.conf fajlban meghatarozott [] resszel
# egyebkent a tavoli gepen futo daemon moduljait ki is irathatjuk:
rsync rsync://tavoliGepnev
   # az eredmeny esetunkben ez lesz:  teszt     teszt konyvtar a menteshez

# ajanlatos hasznalni egy password-ot a mentes soran, melyet ezen opcioval adhatunk meg: --password-file

# fontosabb opciok:
# -v verbose mode
# -q quiet mode
# -a achive  modd
# -r recursive mode
# -b backup mode
# -u update, csak a valtozasokat viszi at
# -l linkeket is masolja
# -H hardlinkeket is masolja
# -p jogosultsagokat is masolja
# -E vegrehajthatosagot is masolja
# -A acl-eket is masolja
# -X xattrs is masolja
# -o tulajdonost is masolja
# --dry-run mi lenne ha vegrehajtana a parancsot
# --rsh=COMMAND a remote shellt tudom megadni
# -z tomoriti az atvitel soran a fajlokat
# --remote-options=OPTION olyan beallitasok amik csak a tuloldalon lesznek ervenyessek (logfile, fake super user, stb)
# -M OPTION olyan beallitasok amik csak a tuloldalon lesznek ervenyessek (--log-file, --fake-super, stb)
# --log-file=FILE log fajl megadasa
# --password-file=FIlE jelszo fajl megadasa
# 
# daemon-kenti futtatas eseten tovabbi opciok adhatoak meg
# rsync --daemon 
# --config