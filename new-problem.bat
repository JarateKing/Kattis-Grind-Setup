@echo off

:: get problem name
if not [%1]==[] set problemname=%1
if [%1]==[] set /p problemname="Name of problem: "

mkdir "problems/%problemname%"

:: make link to website
echo start https://open.kattis.com/problems/%problemname% > problems/%problemname%/kattis.bat

:: make base file
echo. > problems/%problemname%/prog.cpp

:: make run file
echo g++ -g -O2 -std=gnu++17 -static prog.cpp > problems/%problemname%/run.bat
echo a.exe >> problems/%problemname%/run.bat
echo pause >> problems/%problemname%/run.bat

pause
