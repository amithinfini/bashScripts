#!/bin/bash

for i in * .*
do
	if [ "$i" != "." -a "$i" != ".." ];
	then
		owner="$(stat --format "%U" ./$i)"
		echo $owner $i
	fi
done
