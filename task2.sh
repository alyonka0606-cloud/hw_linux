#!/bin/bash

path_file = $1
ext_1 = $2
ext_new = $3

if [[ "$ext_1" == ".txt" ]] or [[ "$ext_1" == ".pdf" ]] or [[ "$ext_1" == ".doc" ]]; then
  exit 1
else
  echo "Неверное расширение"
fi

BASENAME="${path_file%.*}"
NEW_FILE="${BASENAME}.${ext_new}"

mv "$path_file" "$NEW_FILE"
echo "Файл переименован: $NEW_FILE"

