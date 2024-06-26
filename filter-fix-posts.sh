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
			head -n${yamlEnd} {} > {}.yaml.tmp
			sed -i -E ":a; N; $!ba; s/(:\s*)>\n\s*/\1/; s/>\n\s*/ /g; s/\n\s+/ /g" {}.yaml.tmp
			set $(head -n${yamlEnd} {} | grep "post_date: "); date="$2 $3"; day="$2"; dateSlug="$(echo "$2-$3" | sed "s/:/-/g")"
			#set $(head -n${yamlEnd} {} | grep "post_name: "); slug="$(echo "$2" | sed "s/\"//g")"
			set $(grep "post_name: " {}.yaml.tmp); slug="$(echo "$2" | sed "s/\"//g")"
			head -n${yamlEnd} {} | head -n-1 > {}.tmp
			#set $(head -n${yamlEnd} {} | grep "post_title: "); shift; echo "title: $@" >> {}.tmp
			set $(grep "post_title: " {}.yaml.tmp); shift; echo "title: $@" >> {}.tmp
			echo "date: ${date}" >> {}.tmp
			echo "canonical_url: $(head -n${yamlEnd} {} | grep "  https://octospacc.altervista.org/")" >> {}.tmp
			tail -n+${yamlEnd} {} >> {}.tmp
			mv {}.tmp {}
			rm {}.yaml.tmp
			sed -i "s|src=\"https://octospacc.altervista.org/wp-content/uploads/|src=\"{{site.cdnurl}}/assets/uploads/|g" {}
			sed -i "s|<a href=\"https://octospacc.altervista.org/|<a href=\"|g" {}
			#sed -E "s/<a[^>]*href=\"https:\/\/octospacc.altervista.org\/([^\"]*)[^>]*>([^<]*)<\/a>/[\2](\1.md)/g" | sed -E ":a; s/(\[[^]]*\]\([^)]*)\//\1-/; ta" | cat > {}
			mv {} "_posts/${day}-${slug}.md"
		fi
	' \; || true 
done
