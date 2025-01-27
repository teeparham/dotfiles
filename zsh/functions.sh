title() {
  printf "\033]0;%s\007" "$1";
}

ptt() {
  PARALLEL_TEST_PROCESSORS=4 rake parallel:test[^test/$1];
}

rr() {
  for ((n=0; n<$1; n++))
    do eval ${*:2}
  done
}

# brew install ffmpeg imagemagick
mov2gif() {
  ffmpeg -i "$1" -vf scale=800:-1 -r 10 -f image2pipe -vcodec ppm - |\
  convert -delay 5 -layers Optimize -loop 0 - "${1%.*}.gif"
}

utrs() {
  local url="https://api.utrsports.net/v2/search?query=$1&top=7&skip=0"
  local raw=$(curl -s "$url")
  local response=$(echo "$raw" | tr -d '\000-\037')
  echo "$response" | jq -r '.players.hits[].source | "\(.displayName) - \(.location.display) - \(.id)"'
}

utr() {
  local url="https://api.utrsports.net/v1/player/$1/profile"
  local response=$(curl -s $url)
  echo "$response" | jq '.threeMonthRating'
}
