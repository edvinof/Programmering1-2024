# Variables
$USERNAME = "ditt användarnamn"
$REPO_NAME = "ditt reponamn"
$TOKEN = "klistra in token från github här"  # Replace with your actual token
$GITHUB_URL = "https://$USERNAME:$TOKEN@github.com/$USERNAME/$REPO_NAME.git"

# Step 1: Clone the empty GitHub repository
git clone $GITHUB_URL
Set-Location -Path $REPO_NAME

# Step 2: Create a simple Python file
"print('Hello, GitHub!')" | Out-File -Encoding UTF8 -FilePath hello.py

# Step 3: Skriv en enkel README
"# Programmering1-2024`nThis repository contains examples for the Programmering1-2024 course." | Out-File -Encoding UTF8 -FilePath README.md

# Step 4: Lägg till de filer vi skapat för staging - redo att commita och skickas upp
git add hello.py README.md

# Step 5: Commit med ett meddelande
git commit -m "Initial commit: Add hello.py and README.md"

# Step 6: Pusha till main-branchen
git push origin main

#Se till att scriptet är exekverbart(skriv detta i powershell): Set-ExecutionPolicy RemoteSigned -Scope CurrentUser