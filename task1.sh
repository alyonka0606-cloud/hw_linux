#!/bin/bash

#if u -> big, l-> smal

arg=$1
word=$2

if [[ "$arg" == "-u" ]]; then
  echo "${word^^}"
elif [[ "$arg" == "-l" ]]; then
  echo "${word,,}"
else
  echo "Неверный аргумент"
fi
