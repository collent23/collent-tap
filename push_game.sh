#!/bin/bash

# Ganti token di bawah ini pake token GitHub lo yang valid
TOKEN="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"

# Nama repo dan username GitHub
USERNAME="collent23"
REPO="collent-tap"

# Cek folder dan file
if [ ! -f "index.html" ]; then
    echo "❌ File index.html gak ditemukan, pastikan kamu di folder game-nya!"
    exit 1
fi

# Inisialisasi Git
git init
git branch -M main
git add .
git commit -m "Add Collent Tap game"

# Set remote URL dengan token
git remote remove origin 2>/dev/null
git remote add origin https://$TOKEN@github.com/$USERNAME/$REPO.git

# Push ke GitHub
git push -u origin main
