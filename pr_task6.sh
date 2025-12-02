#!/bin/bash

# Список хостов для проверки
hosts=("google.com" "yandex.ru" "github.com")

for host in "${hosts[@]}"; do
  echo "Пингуем $host ..."
  if ping -c 1 -W 1 "$host" >/dev/null 2>&1; then
    echo "Хост $host доступен"
  else
    echo "Хост $host недоступен"
  fi
done

