function title {
  printf "\033]0;%s\007" "$1";
}

function ptt {
  PARALLEL_TEST_PROCESSORS=4 rake parallel:test[^test/$1];
}

function rr() {
  for ((n=0; n<$1; n++))
    do eval ${*:2}
  done
}
