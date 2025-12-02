#!/bin/bash

# скрипт проверяет формат файла CSV/CST-файл и проверяет их на корректность (кол-во столбцов = кол-во строк)


file="$1"

# проверяем формат файла

if [[ "$file"!= *.csv ]] || [[ "$file"!= *.tsv ]]; then
  echo "Неверный формат файла"
elif [[ "$file"== *.csv ]]; then #проверяем какой из нужных форматов и записываем разделитель в переменную
  delimiter=","
elif [[ "$file"== *.cst ]]; then 
  delimiter="/t"
fi

# считаем количество столбцов в 1 строке
col=$(head -n1 "$file"| awk -F"delimiter" '{print NF}')

rows < wc -l file #number of rows in file

# сравниваем количество столбцов в каждой строке с первой это цикл фор
for i in {2...rows}; do
  num=$(head -n1 "$file"| awk -F"delimiter" '{print NF}')
  if [[ num != col ]]; then
    echo "Ошибка в строке "$i""
  else 
    "$i"=+1
  fi
done <"$file"
echo "Проверка завершена"



