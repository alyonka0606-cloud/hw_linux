#!/bin/bash

fdyr="$1"

if [ ! -e "$fdyr" ]; then
  echo "Ошибка: '$fdyr не существует."
  exit 1
fi

if [ -d "$fdyr" ]; then
  echo "Список файлов в директории '$fdyr':"
  ls -l "$fdyr"
else
  echo "Информация о файле '$fdyr':"
  ls -l "$fdyr"
  echo "Число строк:"
  wc -l < "$fdyr"
fi

