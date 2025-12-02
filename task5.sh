#!/bin/bash

file="$1"
if[-f"$file"]; then
  filename=$(basename"$file")
  ln -s "$file" "filename"
  echo "Ссылка: $filename"
else
  echo "Файл не найден"
