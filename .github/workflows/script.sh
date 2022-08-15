#!/bin/bash

#########
# some debug output to check in case of failures
# also exit on any error
set -xe

#for i in $(find . -name '*_brut.md') ; do
  #echo "$i"
  #echo "dossier : $(dirname $i)"
#done

dirname= dirname "$i"
foldername= basename "$dirname"
echo "partie principale: "
#cd $1
cat $1 > "$foldername"/Summary.md

git config --global user.email "fralacticus@gmail.com"
git config --global user.name "fralacticus"
git add "$(dirname $i)/Summary.md"
git commit -m "Update Summary.md at $(date)"
git push origin main
