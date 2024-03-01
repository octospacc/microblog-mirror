#!/bin/sh
set -e
cd "$( dirname "$( realpath "$0" )" )"

# TODO adapt for pages
for dir in _posts
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
			head -n${yamlEnd} {} | head -n-1 > {}.tmp
			set $(head -n${yamlEnd} {} | grep "post_title: "); shift; echo "title: $@" >> {}.tmp
			echo "canonical_url: $(head -n${yamlEnd} {} | grep "  https://octospacc.altervista.org/")" >> {}.tmp
			tail -n+${yamlEnd} {} >> {}.tmp
			mv {}.tmp {}
			sed -i "s|src=\"https://octospacc.altervista.org/wp-content/uploads/|src=\"{{site.cdnurl}}/assets/uploads/|g" {}
			set $(head -n${yamlEnd} {} | grep "post_date: "); dateStr="$(echo "$2-$3" | sed "s/:/-/g")"
			set $(head -n${yamlEnd} {} | grep "post_name: "); slug="$2"
			mv {} "_posts/${dateStr}-${slug}.md"
		fi
	' \; || true 
done

#if [ -z "$(head -n${yamlEnd} {} | grep "canonical_url: ")" ]; ...

#elif [ -z "$(head -n${yamlEnd} {} | grep "post_fixed_placeholder: true")" ]
#	...
#	echo "date: ${date}" >> {}.tmp
#	...
#	echo "post_fixed_placeholder: true" >> {}.tmp
