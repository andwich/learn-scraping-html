#!/bin/bash

proxy_opt=""
base_url=""
view_data_dir=""
preview_dir=""

for file in $(ls $view_data_dir | grep .json$); do
  name=$(echo $file | sed -e "s/\.json//")
  curl ${proxy_opt} ${base_url}${name} > ${preview_dir}"/"${name}".html"
done
