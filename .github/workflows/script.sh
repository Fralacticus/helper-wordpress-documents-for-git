#!/bin/bash

#########
# some debug output to check in case of failures
# also exit on any error
set -xe

#for i in $(find . -name '*_brut.md') ; do
  #echo "$i"
  #echo "dossier : $(dirname $i)"
#done

ancien='(assets/'
nouveau='https://raw.githubusercontent.com/Fralacticus/articles_md/main/TODO/assets/'
#nouveau='https://raw.githubusercontent.com/Fralacticus/articles_md/main/$(dirname $1)/assets/'

# Notice sed -> s/motif/substitut/g

echo "partie principale: "
#cd $1
cat $1 | sed "s|${ancien}|${nouveau}}|g" > $2

git config --global user.email "fralacticus@gmail.com"
git config --global user.name "fralacticus"
git add $2
git commit -m "Update Summary.md at $(date)"
git push origin main
