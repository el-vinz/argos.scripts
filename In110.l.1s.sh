#!/bin/bash

source="http://myos.fr:8000/"
log="$HOME/.logs/R110"
gettrack=$(curl -s $source | sed 's/<[^>]*>//g' | awk -F 'playing:' {'print $2'} | sed '/^$/d')
display=$(tail -n 10 $log)

echo "<span color='#FFFF' weight='bold'><small><tt>"110"</tt></small></span> | length=3"
echo "---"
echo ":headphones: Ecouter Radio110 | bash=radio110 terminal=false"
echo "---"
echo "$gettrack"
echo "---"
echo "$display"

