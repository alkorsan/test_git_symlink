@echo off
setlocal
PUSHD %~dp0

call addgit

if not exist .git git init
git add -A
git commit -m "autooo commit"
git branch -M main

git remote add origin git@github.com-alkorsan:alkorsan/test_git_symlink.git 2>nul
git remote set-url origin git@github.com-alkorsan:alkorsan/test_git_symlink.git

:: git push -u origin main
:: or
git push -u -f origin main
:: CUIDADO push -f will delete everything in github repo and replace it with my local git content


pause
