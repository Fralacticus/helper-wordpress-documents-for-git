#!/bin/bash

#########
# Affiche chaque commande exécutée avec ses arguments
# Sort du script dès qu’une erreur est rencontrée (retour différent de 0)
set -e

echo "------- Début du script --------"

echo "-> On définit le du nom du nouveau fichier à partir de l'original en retirant le suffixe _brut"
destFic="$(echo $1 | sed "s/_brut//g")"

echo "-> On définit les motifs pour convertir les liens d'images relatifs au dossier assets en absolus"
ancien='(assets/'
nouveau="(https://raw.githubusercontent.com/${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY##*/}/${GITHUB_REF_NAME}/$(dirname $1)/assets/"

ancien2='src='\"'assets/'
nouveau2='src='\""https://raw.githubusercontent.com/${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY##*/}/${GITHUB_REF_NAME}/$(dirname $1)/assets/"

echo "-> On remplace les motifs et on écrit le nouveau fichier"
cat $1 | sed "s|${ancien}|${nouveau}|g" | sed "s|${ancien2}|${nouveau2}|g" > $destFic

echo "-> On met à jour le dépôt git avec le fichier : ${destFic}"
git config --global user.email "fralacticus@gmail.com"
git config --global user.name "fralacticus"
#git add $destFic
git add -A

if ! git diff-index --quiet HEAD
then
  echo "ON COMMIT (car fichier différent) :"  
  git commit -m "Mise à jour le $(date)"
  echo "Push"
  git push origin main
else
  echo "ON NE COMMIT PAS (car fichier identique)"   
fi

echo "------- Fin du script --------"
