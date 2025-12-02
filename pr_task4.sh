#!/bin/bash

DIR="${1:-.}"

if [ ! -d "$DIR" ]; then
  echo "Ошибка: '$DIR' не директория."
  exit 1
fi

echo "Отчет по файлам в директории: $DIR"
echo

# Считаем количество файлов по расширениям и общий размер
declare -A counts
total_size=0

while IFS= read -r -d $'\0' file; do
  ext="${file##*.}"
  ((counts[$ext]++))
  size=$(stat -c%s "$file")
  total_size=$((total_size + size))
done < <(find "$DIR" -type f -print0)

echo "Количество файлов по типам:"
for ext in "${!counts[@]}"; do
  echo "  .$ext : ${counts[$ext]}"
done

echo
echo "Общий размер файлов: $((total_size / 1024)) KB"

