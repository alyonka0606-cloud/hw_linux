#!bin/bash/sh

#    1. Используя awk, извлеките только IP-адреса и коды состояния (например, 200, 404) и сохраните их в новый файл status_codes.txt.
awk '{print $1, $9}' access.log > status_codes.txt


#   2. С помощью sed найдите все строки с ошибками 4xx (например, 404) и замените код состояния на фразу "CLIENT_ERROR", сохранив вывод в файл errors.log.
sed 's/\([0-9]\{3\}\.\{3\}\.[0-9]\{1,3\} [^ ]* [^ ]* [^ ]* [^ ]* "[^"]*" \([4][0-9][0-9]\) \)/\1 CLIENT_ERROR /' access.log > errors.log


#   3. Напишите цикл for, который для каждого уникального IP-адреса из файла status_codes.txt подсчитает количество запросов с помощью grep и wc -l.

awk '{print $1}' status_codes.txt | sort -u > unique_ips.txt
for ip in $(cat unique_ips.txt); do
  count=$(grep "^$ip" access.log | wc -l)
  echo "IP $ip: $count запросов"
done

