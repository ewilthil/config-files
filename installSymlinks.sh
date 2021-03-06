#!/bin/bash

dir=~/config-files
olddir=~/conf_old
files=".vimrc .gitconfig .aliases .bashrc .bashfunctions.sh .gitignore"

echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "Done"

echo -n "Changing to the $dir directory ..."
cd $dir
echo "Done"

for file in $files; do
	mv ~/$file $olddir/
	ln -s $dir/$file ~/$file
	echo "$file linked"
done
