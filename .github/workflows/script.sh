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
nouveau="(https://raw.githubusercontent.com/${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY##*/}/${GITHUB_REF_NAME}/$(dirname $1)/assets/"

ancien2='src='\"'assets/'
nouveau2='src='\""https://raw.githubusercontent.com/${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY##*/}/${GITHUB_REF_NAME}/$(dirname $1)/assets/"

# Notice sed -> s/motif/substitut/g

echo "partie principale: "
#cd $1
cat $1 | sed "s|${ancien}|${nouveau}|g" | sed "s|${ancien2}|${nouveau2}|g" > $2

git config --global user.email "fralacticus@gmail.com"
git config --global user.name "fralacticus"
git add $2
git commit -m "Mise à jour $($1) le $(date)"
git push origin main
