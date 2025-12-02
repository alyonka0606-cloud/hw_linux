#!bin/bash/sh
#Задача: Найти все валидные email-адреса в логе.

grep -oP '\[([a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})\]' user_activity.log | sed 's/[\[\]]//g'

