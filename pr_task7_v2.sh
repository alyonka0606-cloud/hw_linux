#!/bin/bash
#обратный отсчет с анимацией (анимация - строка из символов)

a=$1

if [[ "$a"<=0 ]]; then
  echo "Enter number of seconds correctly"
else
  for ((i=a; i>=1; i--)) do
    for ((j=1; j<=i; j++)) do
      echo -n "* "
    done
    echo " "
    sleep 1
  done
  echo "Time is over"
fi

