#!/bin/bash

echo -e "\033[0;32mPushing updates to GitHub...\033[0m"

# tambahkan perubahan ke Git
git add .

# Buat sebuah commit baru
msg=":rocket: rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push atau upload ke Github
git push -u origin master
