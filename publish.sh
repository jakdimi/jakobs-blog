#!/bin/bash

commit_message=${1}

if [ -z "$commit_message" ]
then
    echo "Please enter commit message:"
    read commit_message
fi

echo
echo "publishing with commit message '$commit_message'..."
echo "================================================================================"
echo
echo "Building site..."
echo "--------------------------------------------------------------------------------"
echo 

hugo -t PaperMod

echo
echo "Push to blog repo..."
echo "--------------------------------------------------------------------------------"
echo

git add .
git commit -m "$commit_message"
git push

echo
echo "Push to site repo..."
echo "--------------------------------------------------------------------------------"
echo

cd public
git add .
git commit -m "$commit_message"
git push
