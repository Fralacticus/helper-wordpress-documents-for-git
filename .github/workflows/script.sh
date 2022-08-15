#!/bin/bash

#########
# some debug output to check in case of failures
# also exit on any error
set -xe

#for i in $(find . -name '*_brut.md') ; do
  #echo "$i"
  #echo "dossier : $(dirname $i)"
#done

newpath= echo "$(echo $file | sed "s/_brut//g")"
echo "partie principale: "
#cd $1
cat $1 > $newpath

git config --global user.email "fralacticus@gmail.com"
git config --global user.name "fralacticus"
git add $newpath
git commit -m "Update Summary.md at $(date)"
git push origin main
