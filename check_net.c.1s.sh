#!/bin/bash


check_ping () {

if ! ping -c 1 -W 1 google.fr &> /dev/null
    	then
	checknet="KO"
    	return 1
	else
	checknet="OK"
	return 0	
fi

}

VAL=$(if ping -c 1 google.fr &>/dev/null;\
then echo "<span color='#9BF' weight='bold'><tt>"OK"</tt></span>";\
else echo "<span color='#cc0000' weight='bold'><tt>"DOWN"</tt></span>";\
fi)
echo "$VAL"

#checkit=$(check_ping)
#check_ping 

#echo "<span color='#9BF' weight='normal'><small><tt>"Internet ${checknet}"</tt></small></span> | length=40"
#echo "<span color='#9BF' weight='normal'><small><tt>"toto"</tt></small></span> | length=40"



