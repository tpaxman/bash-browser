#!/bin/bash

# look up website based on keyword and guess otherwise
case $1 in
    google | google.com | google.ca)
        url="www.google.com"
        query="search?q="
        ;;
    whatsapp | google.com | google.ca)
        url="web.whatsapp.com"
        ;;
    dyna | dynalist | dynalist.io)
        url="www.dynalist.io"
        query="#q="
        ;;
    youtube | you | youtube.com)
        url="www.youtube.com"
        query="results?search_query="
        ;;
    reddit | red | reddit.com)
        url="www.reddit.com"
        query="search?q="
        ;;
    gmail | gmail.com | mail.google.com | mail)
        url="mail.google.com/mail/u/0"
        query="#search/"
        ;;
    stackoverflow | stack | so | stackoverflow.com)
        url="www.stackoverflow.com"
        query="search?q="
        ;;
    imdb | imdb.com)
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
