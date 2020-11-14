#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"


# tambahkan perubahan ke Git
git add .

# Buat sebuah commit baru
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push atau puload ke Github
git push dns master

# Balik ke direktori sebelumnya
cd ..