#!/bin/bash

dir=$(pwd)
homedir=$HOME
for i in $(find home -type f)
do
	filepath=$(ls $i | sed "s|home|$HOME|")
	filedir=$(echo "$filepath" | sed 's,/[^/]*$,,')
	linkpath=$(ls $i | sed "s|home|$dir/home|")
	echo $filepath
	mkdir -p $filedir
	mv $linkpath $filepath
	ln -s $filepath $linkpath
done

for i in $(find root -type f)
do
	filepath=$(ls $i | sed "s/root//")
	filedir=$(echo "$filepath" | sed 's,/[^/]*$,,')
	linkpath=$(ls $i | sed "s|root|$dir/root|")	
	echo $filepath
	sudo mkdir -p $filedir
	sudo mv $linkpath $filepath
	ln -s $filepath $linkpath
done
