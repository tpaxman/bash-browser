#!/bin/bash

# look up website based on keyword and guess otherwise
case $1 in
    google)
        url="www.google.com"
        query="search?q="
        ;;
    youtube | you)
        url="www.youtube.com"
        query="results?search_query="
        ;;
    reddit | red)
        url="www.reddit.com"
        query="search?q="
        ;;
    stackoverflow | stack | so)
        url="www.stackoverflow.com"
        query="search?q="
        ;;
    imdb)
        url="www.imdb.com"
        query="find?q="
        ;;
    *)
        url=$1
        query="search?q="
esac

# assume all the other arguments are search terms to look up on the site
if [ "$#" -gt "1" ]; then
	for term in ${@: 2}; do
	     searchterm="$searchterm%20$term"
	done
	url+="/$query$searchterm"
fi

# open the default browser and navigate to the page
cmd.exe /C start "https://$url"
