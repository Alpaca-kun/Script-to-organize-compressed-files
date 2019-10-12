Script to organize compressed files
====

A particular script to convert .rar files into .zip files.

## Description
Sometimes I get files compressed in .rar ~~WHY~~. But .rar is a limited file format to 
work on the Linux. So I created a particular script on Bash that searches for
.rar files, uncompress them and re-compress into .zip format.

The detailed function of the script is:
1. Search for .rar files
1. Extract each one into a folder with the same name of the original file
1. Compress each folder into a .zip file

## Requirements
- Install unrar
- Install unzip

## Usage
This script was written by an amateur, so the things you need to do is:
1. Install the requirements
2. Put the script and the "exclude.tst" on to the directory where you want to execute
3. Edit the "exclude.lst" as you like to exclude some items to compress ~~and if you need, edit the code too~~
4. Attribute the permission to the script to execute, like as
  ```
  $ chmod +x rar2zip.sh
  ```
5. Wait 

## Future functions I want to add
- [ ] Check existing .zip files and add a folder inside if it doesn't exist a folder that includes the files
- [ ] Make the script more dynamic, e.g., set the path to execute the script

