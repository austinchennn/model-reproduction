#!/bin/zsh
cd /Users/austins/model-reproduction
git add -A
git status
echo "---"
echo "Committing changes..."
git commit -m "feat: organize model weights in weights/ folder and update docs"
echo "---"
echo "Pushing to remote..."
git push
echo "Done!"
