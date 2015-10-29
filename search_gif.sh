function log {
  echo "======== $1 ========"
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

get_gif
