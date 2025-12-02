#!bin/bash/sh

#Используя sed, приведите весь текст к нижнему регистру и удалите все знаки препинания.

sed 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/; s/[[:punct:]]//g' input.txt > clean.txt

#Используя awk, подсчитайте частоту каждого слова и выведите ТОП-5 самых часто встречающихся слов в формате "Слово: Количество".
awk '{ for(i=1; i<=NF; i++) count[$i]++ } END { PROCINFO["sorted_in"]="@ind_num_asc"; for(w in count) if(count[w]>0) top[count[w],w]=""; asorti(top,a); for(i=1; i<=5 && i<=length(a); i++) print a[i][2] ": " a[i][1] }' clean.txt


#Напишите цикл for, который прочитает 5 самых частых слов и с помощью команды curl отправит запрос в свободный словарный API (например, dictionaryapi.com) для получения их определений.

while IFS=: read -r word count; do
  word=$(echo "$word" | xargs);  # Удаляем лишние пробелы
  echo "Определение для '$word':";
  curl -s "https://api.dictionaryapi.dev/api/v2/entries/en/$word" | jq '.[0].meanings[0].definitions[0].definition // "Не найдено"' 2>/dev/null;
  echo "---";
done < top5.txt





