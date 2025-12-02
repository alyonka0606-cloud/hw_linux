#!/bin/bash

FILE="$1"
THRESHOLD="${2:-3}"  # Порог по умолчанию 3

# Проверка аргументов
[ $# -lt 1 ] && { echo "Использование: $0 файл.csv [порог]"; exit 1; }
[ ! -f "$FILE" ] && { echo "Ошибка: файл '$FILE' не существует"; exit 1; }

echo "Студенты с оценкой > $THRESHOLD по предметам:"

# Читаем файл, пропуская заголовок
tail -n +2 "$FILE" | while IFS=',' read -r name grade subject; do
  # Убираем лишние пробелы и кавычки
  name=$(echo "$name" | xargs)
  grade=$(echo "$grade" | xargs)
  subject=$(echo "$subject" | xargs)
  
  # Проверяем оценку
  if (( $(echo "$grade > $THRESHOLD" | bc -l) )); then
    echo "✓ $name ($grade) - $subject"
  fi
done

