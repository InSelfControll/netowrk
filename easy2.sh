#!/bin/bash

#This script takes all the txt files that not included the word allowlist in their name from folders fanboy_addon and easylist and easyprivacy and easylist_coockie from GitHub and combines all of them to one txt file and uploads them to my GitHub.

# Create a folder to store the files
mkdir combined_files

# Go to the easylist directory
cd easylist

# Copy all the files that don't include allowlist in their name to the combined_files folder
find . -type f ! -name '*allowlist*' -exec cp {} ../combined_files \;

# Go to the easyprivacy directory
cd ../easyprivacy

# Copy all the files that don't include allowlist in their name to the combined_files folder
find . -type f ! -name '*allowlist*' -exec cp {} ../combined_files \;

# Go to the easylist_cookie directory
cd ../easylist_cookie

# Copy all the files that don't include allowlist in their name to the combined_files folder
find . -type f ! -name '*allowlist*' -exec cp {} ../combined_files \;

# Go to the fanboy_addon directory
cd ../fanboy-addon

# Copy all the files that don't include allowlist in their name to the combined_files folder
find . -type f ! -name '*allowlist*' -exec cp {} ../combined_files \;

# Go back to the original directory
cd ..

# Create a combined text file
cat combined_files/* > combined_lists.txt

# Push the combined list to GitHub
git add combined_lists.txt
git commit -m "Combined lists from fanboy_addon, easylist, easyprivacy, and easylist_coockie"
git push origin master
