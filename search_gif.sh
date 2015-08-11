function log {
  echo "======== $1 ========"
}

function check_install_homebrew_mac {
  log "Checking/Installing Homebrew"
  if [ "$(which brew)" == "" ]; then
    log "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  else
    log "Homebrew is already installed"
  fi;
}

function check_install_jq {
  log "Checking/Installing jq"
  if [ "$(find /usr/local/Cellar/jq)" == "" ]; then
    log "Installing jq with Homebrew"
    brew install jq
  else
    log "jq is already installed"
  fi;
}

function get_gif {
  echo "Enter gif search query ^:"
  read input
  input=$input
  echo "searching giphy with entered query"
  url="http://api.giphy.com/v1/gifs/search?q=${input}&api_key=dc6zaTOxFJmzC&limit=1"
  gif=$(curl $url | jq -r '.data[0].url')
  echo gif=${gif// /+}
  gif=$gif/fullscreen
  open $gif   
}

# check_install_homebrew_mac
# check_install_jq
get_gif
