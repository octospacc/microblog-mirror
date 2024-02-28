#!/bin/sh
set -e
cd "$( dirname "$( realpath "$0" )" )"

for dir in _posts _pages
do
	find ${dir} -type f -exec sh -c '
		isAuthorCorrect=;isPublished=;
		echo "> {}"
		yamlSeparators="$(grep -n -- --- {} | cut -d: -f1)"
		set $yamlSeparators
		isAuthorCorrect="$(head -n$2 {} | grep "author: minioctt")"
		isPublished="$(head -n$2 {} | grep "published: true")"
		if [ -z "${isAuthorCorrect}" ] || [ -z "${isPublished}" ]
		then rm -v {}
		fi
	' \; || true 
done