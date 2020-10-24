# bash-browser

This repo contains a script for opening your browser to a site or search result from bash in WSL.
It allows you to either open to a webpage or to a search result on that webpage.

## Usage syntax:

The first argument is the keyword for the website (google, youtube, gmail, etc.) and all following arguments
are optional search terms:

```
./browse.sh <website keyword or url> <search terms separated by spaces>
``` 

## Usage examples:

```
./browse.sh google                     # opens up https://www.google.com in your default browser in Windows
./browsh.sh google how to foo a bar    # opens up a search result for "how to foo a bar" on google.com
./browse.sh youtube                    # opens up https://www.youtube.com
./browsh.sh youtube we are the world   # opens up a search result on youtube.com
```

Currently the following websites are supported (because they're the ones I use most):

- google
- whatsapp
- dynalist
- youtube
- reddit
- gmail
- stackoverflow
- imdb


Any other website can be accessed by typing its suffix:

```
./browse.sh nba.com
```

You can also try to search a website by adding more arguments after the site name keyword
which will by default try to append `/search?q=` to the url, which may not work. No guarantees.

