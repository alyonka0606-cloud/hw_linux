#!/bin/bash
#ищем 10 самых частых слов в текстовом файле

file="$1"
if [["$file" != "*.txt"]]; then
  echo "Not a .txt file"
else
  # надо разбить весь файл на строки
  # отсортировать и соорудить конструкцию с юник, и потом можно вывести сортировку по повторам и на выход подать 10 первых
words={}
  for str in "$file" do
    tr -cs '[:alnum:]' '/n*' < $words | \
    tr '[:upper:]' '[:lower:]'| \
  $words sort | uniq -c | sort -nr | head -n 10
fi
awk '{print $2 ": " $1}'
