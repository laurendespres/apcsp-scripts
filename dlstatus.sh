#!/bin/bash

# list of droplets to ping
USERS=' dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11'

# iteration for droplets
for users in $USERS ; do
	# ping users and send results
	ping -c 1 -t 1 $USERS>/dev/null
	# if alive echo alive, if not, echo dead
	if [ $? -eq 0 ]; then
		echo "$USERS :alive"
	else
		echo "$USERS :dead"
	fi
done
