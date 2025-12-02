#!bin/bash/sh

#   1. Используя awk, рассчитайте общую стоимость товаров на складе для каждой категории (Price * Stock) и отсортируйте результат по убыванию стоимости.
awk -F, 'NR>1 { cost = $4 * $5; total[$3] += cost } END { for(cat in total) print cat, total[cat] }' products.csv | sort -k2 -nr


#    2. С помощью sed удалите все товары, у которых количество на складе (Stock) равно 0, и сохраните результат в available_products.csv.

sed '1,/Stock/!{ /,0$/d }' products.csv > available_products.csv

#   3. Напишите while цикл, который читает available_products.csv и с помощью awk выводит названия только тех товаров, цена которых выше 100.
while IFS= read -r line; do
  echo "$line" | awk -F, 'NR==1 {next} $4+0 > 100 {print $2}'
done < available_products.csv

