#!/bin/bash
# Run this in Terminal after: gh auth login
set -e
cd "$(dirname "$0")"

echo "Creating repo and pushing..."
gh repo create birthday-shebtini --public --source=. --remote=origin --push --description "Birthday page for Shebtini" 2>/dev/null || git push -u origin main

echo ""
echo "Opening GitHub Pages settings — choose Branch: main, Folder: / (root), Save."
open "https://github.com/redaolaa/birthday-shebtini/settings/pages"

echo "Done! Your link: https://redaolaa.github.io/birthday-shebtini/"
