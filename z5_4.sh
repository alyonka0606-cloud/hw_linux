#!bin/bash/sh


#    1. Используя sed, преобразуйте файл в формат "ключ=значение", убрав фигурные скобки, кавычки и пробелы. Результат: host=localhost.

sed 's/^{ *//; s/ *}$//; s/ *" *\([^"]*\)" *: *"\([^"]*\)" *, */\1=\2\n/g; s/ *" *\([^"]*\)" *: *\([0-9]*\), */\1=\2\n/g; s/ *" *\([^"]*\)" *: *true, */\1=true\n/g' config.json > config.txt

#   2. Используя awk, добавьте в начало каждой строки префикс "CONF_". Результат: CONF_host=localhost.

awk '{print "CONF_" $0}' config.txt > config_prefixed.txt

#   3. Напишите цикл for, который прочитает итоговый файл и экспортирует каждую строку как переменную среды с помощью команды export.
for line in $(cat config_prefixed.txt); do
  export "$line"
done

