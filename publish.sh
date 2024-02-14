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

hugo -t PaperMod
git add .
git commit -m "$commit_message"
cd public
git add .
git commit -m "$commit_message"