#!/bin/sh
set -e
cd "$( dirname "$( realpath "$0" )" )"

for dir in _posts _pages
do
	find ${dir} -type f -exec sh -c '
		isAuthorCorrect=;isPublished=;
		echo "> {}"
		set $(grep -n -- --- {} | cut -d: -f1)
		yamlEnd="$2"
		isAuthorCorrect="$(head -n${yamlEnd} {} | grep "author: minioctt")"
		isPublished="$(head -n${yamlEnd} {} | grep "published: true")"
		if [ -z "${isAuthorCorrect}" ] || [ -z "${isPublished}" ]
		then rm -v {}
		else
			set $(head -n${yamlEnd} {} | grep "post_date: ")
			date="$2 $3"
			head -n${yamlEnd} {} | head -n-1 > {}.tmp
			echo "date: ${date}" >> {}.tmp
			tail -n+${yamlEnd} {} >> {}.tmp
			mv {}.tmp {}
		fi
	' \; || true 
done