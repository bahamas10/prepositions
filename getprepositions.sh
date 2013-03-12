#!/usr/bin/env bash
#
# dump a list of prepositions to stdout
#
# Author: Dave Eddy <dave@daveeddy.com>
# Date: 3/11/13
# Licens: MIT

url='http://en.wikipedia.org/w/index.php?title=List_of_English_prepositions&action=edit&section=1'

filter() {
	awk '/^\*/ { sub(/.*\|/, ""); gsub(/[^a-z]+.*$/, ""); print }'
}

curl -sS "$url" | filter
