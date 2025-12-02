#!/bin/bash

path_to_file = $1

ext="${path_to_file##*.}"
if [["$ext" == "*.FASTA "|| "$ext"== "*.fasta" || "$ext"== "*.fa"]]; then
  echo "It's a FASTA file"
else
  echo "Error: not a FASTA file"
fi
