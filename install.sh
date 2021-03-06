#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
	echo "Git is not installed! Install Debian package 'git' and retry."

	exit 0
fi

git clone --no-checkout https://github.com/titan-framework/core tmp

mv tmp/.git ./

rm -rf *

rm -- "$0"

git reset --hard HEAD

git fetch --all

tag=$(git describe --abbrev=0 --tags origin/master)

regex='([0-9]+)\.([0-9]+)\.([0-9]+)\-([a-zA-Z]+)([0-9]*).*'

real="${tag}"
view="${tag}"

if [[ "$tag" =~ $regex ]]
then
   real="${BASH_REMATCH[1]}.${BASH_REMATCH[2]}.${BASH_REMATCH[3]}-${BASH_REMATCH[4]}${BASH_REMATCH[5]}"
   view="${BASH_REMATCH[1]}.${BASH_REMATCH[2]}.${BASH_REMATCH[3]}-${BASH_REMATCH[5]}"
fi

git pull origin master

git checkout ${real}

composer install --no-dev

echo "Version ${view} of Titan Framework Core installed!"
