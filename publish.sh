#!/bin/bash

commit_message=${1}

echo ${commit_message}

git add .
git commit -m "${1}"
