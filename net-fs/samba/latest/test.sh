#!/bin/bash

maxtime="$(( $(date +%s) + 60 ))"

for i in smbd ; do
	echo "Testing command ${i} is valid ..."
	type "${i}" &>/dev/null || exit 1
done

for i in 139 445 ; do
	echo "Testing port ${i} is opened ..."
	while [ -z "$(netstat -tln | grep "${i} ")" ] ; do
		[ "$(date +%s)" -gt "${maxtime}" ] && exit 1
		sleep 1
	done
done

true

