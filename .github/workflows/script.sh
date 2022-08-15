#!/bin/bash

#########
# some debug output to check in case of failures
# also exit on any error
set -xe

#for i in $(find . -name '*_brut.md') ; do
  #echo "$i"
  #echo "dossier : $(dirname $i)"
#done


echo "partie principale: "
#cd $1
cat $1 | \
  sed 's/\(assets\//https:\/\/raw.githubusercontent.com\/Fralacticus\/articles_md\/main/$(dirname $1)/assets\/)/g' | \
  > $2

git config --global user.email "fralacticus@gmail.com"
git config --global user.name "fralacticus"
git add $2
git commit -m "Update Summary.md at $(date)"
git push origin main
