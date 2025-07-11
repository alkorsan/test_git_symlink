@echo off
setlocal
PUSHD %~dp0

:: check admin
fltmc >nul 2>&1 || ( color 4F & echo "____runme as admin" & pause & exit )

echo text>original_file.txt
mkdir original_folder
echo text>original_folder\text.txt

mklink symlink_file.txt original_file.txt
mklink /D symlink_folder original_folder

mklink symlink_file_broken.txt non_existant.txt
mklink /D symlink_folder_broken non_existant

pause
