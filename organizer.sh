#!/bin/bash

for i in *.zip;
do
  FOLDER_NAME="$(unzip -Z1 "$i" | grep -o ".*/$")"
  ARCHIVE_NAME="${i//.zip}" 
  
  if [ "$FOLDER_NAME" ]; then
    if [ "$ARCHIVE_NAME/" != "$FOLDER_NAME" ]; then
      unzip "$i" && rm "$i"
      mv "$FOLDER_NAME" "$ARCHIVE_NAME"
      zip -r "$ARCHIVE_NAME.zip" "$ARCHIVE_NAME" -x@exclude.lst 
      rm -r "$ARCHIVE_NAME"
    fi
  else
    unzip "$i" -d "$ARCHIVE_NAME" && rm "$i"
    zip -r "$ARCHIVE_NAME.zip" "$ARCHIVE_NAME" -x@exclude.lst  
    rm -r "$ARCHIVE_NAME"
  fi
done

for i in *.rar;
do
  FILE_NAME="${i//.rar}"

  # unrar e -r "$i" "$FILE_NAME/"
  unrar x -r "$i"
  zip -r "$FILE_NAME.zip" "$FILE_NAME" -x@exclude.lst

  rm -r "$FILE_NAME/" 
  rm "$i"
done
