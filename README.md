prepositions
============

A JSON array of one-word, english prepositions

Usage
-----

``` js
var prepositions = require('prepositions');
console.dir(prepositions);
```

yields

``` json
[
  "a",
  "abaft",
  "aboard",
  "about",
  "above",
  "absent",
  ...
]
```

How was this list generated?
----------------------------

In the Makefile you'll see a line like this:

	./getprepositions.sh | ./stringify.js > $(FILE)

The first command scrapes wikipedia for the list,
and outputs the results separated by newlines.  The
second command creates the JSON array and outputs
it to stdout, which then gets redirected into
`prepositions.json`

Installation
------------

    npm install prepositions

License
-------

MIT
