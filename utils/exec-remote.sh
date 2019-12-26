#!/bin/bash
for line in `cat $2`
do
	echo $line
	ssh $line "$1"
done

#more $2 | xargs -I {} ssh {} "$1"
