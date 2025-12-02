#!/bin/bash


FILE="$1"
org="$2"

# Проверка существования файла
if [ ! -f "$FILE" ]; then
  echo "Ошибка: файл '$FILE' не существует."
  exit 1
fi

case "$ORGANISM" in
  human|mouse|rat|fly)
    echo "Обрабатываю $FILE"
    ;;
  *)
    echo "Ошибка: организм '$ORGANISM' не поддерживается."
    echo "Поддерживаемые организмы: human, mouse, rat, fly"
    exit 1
    ;;
esac

