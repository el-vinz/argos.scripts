#!/bin/bash
log="$HOME/.logs/MEUH"
gettrack=$(curl -s http://www.radiomeuh.com/playlist/ | grep '</td></tr>' | sed 's/<[^>]*>//g' |  sed -n 3p | sed -r 's/^.{14}//')
display=$(tail -n 10 $log)

echo "<span color='#FFFF' weight='bold'><small><tt>"Meuh"</tt></small></span> | length=4"
echo "---"
echo ":headphones: Ecouter Radio Meuh | bash=meuh terminal=false"
echo "---"
echo "$gettrack"
echo "---"
echo "$display"

