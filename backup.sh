#!/usr/bin/env bash 

BASEDIR=$HOME/Backup
FILENAME=$(date +%F)-Documents.tar.gz

echo "------- Compressing file... -------"
cd $HOME
tar cfz $BASEDIR/$FILENAME Documents
echo "------- Done -------"

echo "------- GPGing... -------"
gpg --batch \
    --yes \
    --encrypt \
    --recipient thgr.araujo@gmail.com \
    $BASEDIR/$FILENAME
echo "------- Done -------"

rm $BASEDIR/$FILENAME

ls $BASEDIR
