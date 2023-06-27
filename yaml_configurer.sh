#!/bin/bash

input_file="ase.yaml"
output_file="ase.yaml.tmp"

while IFS= read -r line; do
  modified_line=$(echo "$line" | sed 's/=\([^=]*\)=.*/=\1/g')
  echo "$modified_line" >> "$output_file"
done < "$input_file"

mv "$output_file" "$input_file"