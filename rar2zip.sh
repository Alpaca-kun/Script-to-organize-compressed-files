#!/bin/bash

for i in *.rar;
do
  FILENAME="${i//.rar}"

  unrar e "$i" "$FILENAME/"
  zip -r "$FILENAME.zip" "$FILENAME" -x@exclude.lst

  rm -r "$FILENAME/" 
  rm "$i"
done
