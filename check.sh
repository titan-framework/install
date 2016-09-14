#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
	echo 'Git is not installed! Try install Debian package git-core.'

	exit 0
fi
