#!/bin/bash

curl -sL -G 'https://arxiv.org/search/math' \
    --data-urlencode "query=$*" \
    --data-urlencode 'searchtype=all' |
grep -oE '/abs/([0-9]{4}\.[0-9]{4,5}|[a-zA-Z.-]+/[0-9]{7})' |
sed 's|/abs/||' |
sort -u

