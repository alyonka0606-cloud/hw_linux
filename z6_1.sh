#!/bin/bash/sh
#Задача: Найти все активные директивы server_name (игнорируя закомментированные строки), которые относятся к домену example.com, но не включают поддомены вроде prod-example.com

grep -E '^\s*server_name\s+example\.com;' config.txt
