#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
	echo 'Git is not installed! Try install Debian package git-core.'

	exit 0
fi

git clone --no-checkout https://github.com/titan-framework/core tmp

mv tmp/.git ./

rm -rf tmp

git reset --hard HEAD

tag=$(git describe --tags)

git checkout ${latesttag}

echo 'Version ${latesttag} of Titan Framework Core installed!'
