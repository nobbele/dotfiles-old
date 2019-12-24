#!/usr/bin/env bash
find . -not -path '*/\.*' -type f \( ! -iname ".*" \) | cut -c 3- | awk '$0 !~ /.*install.sh/' | awk -v pwd="$PWD" -v home_path="$HOME" '{ print pwd"/"$1 " " home_path "/" "."$1 }' | while read line ; do 
  echo "ln -sf $line"
  if [ ! -f ./nodo ]; then 
    ln -sf $line;
  fi
done
