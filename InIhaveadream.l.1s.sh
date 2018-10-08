#!/bin/bash
log="$HOME/.logs/IHAVEADREAM"
gettrack=$(curl -s http://www.radio-ihaveadream.com/ | grep "title:" | awk -F 'title: |&n' '{print $2}' | sed -n  2p | sed 's/^.//')
display=$(tail -n 10 $log)


echo "<span color='#FFFF' weight='bold'><small><tt>"Dream"</tt></small></span> | length=8"
echo "---"
echo ":headphones: Ecouter I Have A dream | bash='ihaveadream' terminal=false"
echo "---"
echo "$gettrack"
echo "---"
echo "$display"

