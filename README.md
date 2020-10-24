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

## Compatible websites:

Currently the following websites are supported (because they're the ones I use most):

- google
- github
- whatsapp
- dynalist
- youtube
- reddit
- gmail
- stackoverflow
- imdb


Any other website can be accessed by including its full name (i.e. `www.nba.com`)

Note, some sites will work by just typing the suffix (i.e. `nba.com` and `www.nba.com` will both work since the first redirects correctly
but `nhl.com` will not redirect to `www.nhl.com` and will fail)

You can also try to search a website by adding more arguments after the site name keyword
which will by default try to append `/search?q=` to the url, since this is pretty common syntax,
but it is not guaranteed to work at all.

## Alias suggestions

In your `~/.bashrc` file, you can add the following to make it easier to run the most common commands, adapted as needed:

```
alias www='/path/to/this/repo/browse.sh'
alias google='www google'
alias gmail='www gmail'
```

which allows you to run commands like:

```
google how old is alec baldwin
gmail from:crazy_jj198982@hotmail.com
```
