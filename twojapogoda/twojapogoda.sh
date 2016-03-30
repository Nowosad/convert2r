#!/bin/bash

# wejscie do katalogu:
echo -e "wejscie do katalogu $katalog"

for katalog in 20*
do
cd $katalog



cat *jelenia* | html2text | sed -n  '/mapa/,/Szczeg/p'  | cut -c 1-30 | sed 's/\n//g' | grep 2015 -A 3| sed 's/\[[^]]*\]//g'  | sed '/^\s*$/d' | sed 's/ //g'| sed 's/T.nocna//' | sed 's/°CT.odczuw//g'|sed '/^\s*$/d' | sed ':a;N;$!ba;s/\n/ /g' | sed 's/-- /\n/g' |  sed 's/Poniedziałek//g' |  sed 's/Wtorek//g'|  sed 's/Środa//g'|  sed 's/Czwartek//g'|  sed 's/Piątek//g'|  sed 's/Sobota//g'|  sed 's/Niedziela//g' |  sed 's/°C//g' > jelenia.$katalog.txt
echo -e "$katalog"

cd ..
done
# zakonczenie petli po katalogach
