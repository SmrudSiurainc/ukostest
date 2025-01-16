#!/bin/bash
read parametr1
mkdir $parametr1
cd $parametr1
git init
git remote add origin git@github.com:SmrudSiurainc/ukostest.git
git branch -m main
git pull origin main
cp ../kolokwium.sh .
touch ReadMe.MD
echo "s33384" > ReadMe.MD
git add .
git commit -m "First commit"
git checkout -b "Test"
touch Add.txt Skip.txt
head -n 10 kolokwium.sh > Add.txt
tail -n 10 kolokwium.sh > Skip.txt
touch .gitignore
echo "Skip.txt" > .gitignore
git add .
git commit -m "Test commit"
git push -u origin Test
git checkout main
git push origin main
git checkout Test
git reset --soft HEAD~2
git commit -m "Clean up"
git push origin Test
