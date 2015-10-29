# Search Gif #

Bash script which takes command line input as a search query using http://giphy.com public API to open a gif in your default browser

## Requirements ##

- Mac OSX 
- Homebrew
- jq command line JSON parser

## Installs ##

There are two methods which check if Homebrew and jq are installed and installs them if they are missing.

`check_install_homebrew_mac`
- Installs Homebrew Mac OSX package manager

`check_install_jq`
- Installs jq command line JSON parser

## Install ##

- Simply run `/.install.sh` to install requirements

## Running the script ##

- `./search_gif.sh` from the command line, or
- Add an alias to your bash profile to run the script regardless of which directory you are in.

`alias gif="cd /path/to/search-gif/repository ; ./search_gif.sh"`
