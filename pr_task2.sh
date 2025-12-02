#!/bin/bash

#скрипт создает резервные копии всех .txt файлов в директории переименовывая их с добавлением даты
#work_dir=$1

datenow=$(date +%x)

for file in *; do
  if [[ -f "$file" ]]; then
    if [[ "$file"=="*.txt" ]]; then
      name="${file%.*}"
      ext="${file##*.}"
      new_name="${name}_$datenow.$ext"
      cp "$file" "$new_name"
    fi
  fi
done
echo "copies with current date are done"
  
