#!/bin/bash

for i in nodejs npm ; do
	echo "Testing command ${i} is valid ..."
	type "${i}" &>/dev/null || exit 1
done

true
