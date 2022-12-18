#!/bin/bash
# datum es ido lekerdezese,allitasa, formazasa
# hasznalat: date [OPTION] ... [+FORMAT]
# datum, ido UTC
date -u
# FORMAT opcioi:
%A - hetnapja kiirva (pl:Sunday)
%c - helyi datum es ido
%F - full date (pl:2022-12-18)
%H - orak 0-23
%M - percek
%S - mp-k
%T - ora:perc:mp

# peldak:
date "+%F %T" # 2022-12-18 13:49:12
date "+%Y.%m.%d %T" # 2022.12.18 13:51:19