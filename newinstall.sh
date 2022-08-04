#!/bin/bash

dir=$(pwd)
homedir=$HOME
for i in $(find home -type f)
do
	filepath=$(ls $i | sed "s|home|$HOME|")
	filedir=$($filepath | sed 's,/[^/]*$,,')
	linkpath=$(ls $i | sed "s|home|$dir|")
	echo $filepath
	mkdir -p $filedir
	mv $linkpath $filepath
	ln -s $filepath $linkpath
done

for i in $(find root -type f)
do
	filepath=$(ls $i | sed "s/root//")
	filedir=$($filepath | sed 's,/[^/]*$,,')
	linkpath=$(ls $i | sed "s|root|$dir|")	
	echo $filepath
	sudo mkdir -p $filedir
	sudo mv $linkpath $filepath
	ln -s $filepath $linkpath
done
