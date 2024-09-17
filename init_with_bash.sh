#!/bin/bash

# Variables
USERNAME="ditt användarnamn"
REPO_NAME="ditt reponamn"
TOKEN="din personal token"  # Replace with your actual token
GITHUB_URL="https://${USERNAME}:${TOKEN}@github.com/${USERNAME}/${REPO_NAME}.git"

# Step 1: Klona repot
git clone $GITHUB_URL
cd $REPO_NAME

# Step 2: skriv ett litet pythonprogram till en initial commit
echo "print('Hello, GitHub!')" > hello.py

# Step 3: Skriv en enkel README
echo "# Programmering1-2024" > README.md
echo "This repository contains examples for the Programmering1-2024 course." >> README.md

# Step 4: Lägg till de filer vi skapat för staging - redo att commita och skickas upp
git add hello.py README.md

# Step 5: Commit med ett meddelande
git commit -m "Initial commit: Add hello.py and README.md"

# Step 6: Pusha till main-branchen
git push origin main

#Se till att scriptet är exekverbart(skriv detta i terminalen): chmod +x path/to/init_with_bash.sh