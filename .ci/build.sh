#!/bin/bash -x

function ExitIfNonZero {
	if [ $1 -ne 0 ]; then
		exit $1
	fi
}

xbuild /p:NoWarn=1584 Dota2.sln /target:Release
ExitIfNonZero $?
