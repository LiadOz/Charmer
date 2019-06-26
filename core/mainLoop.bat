@echo off

set /a count = 0

:loop
:: Checking if termination was scheduled
set /p ter=<termination.txt
if %ter% == 1 GOTO termination

:: Checking program flag to see whether or not to start excution
set /p flag=<flag.txt
if %flag% == 1 GOTO start_script

wait

:: Use log function every 10 loops
set /a count = count + 1
if %count% == 9 GOTO log

GOTO loop

:log
:: Logging the time
echo %time% >> log.txt
set /a count = 0
GOTO loop

:start_script
call run
:: Logging run 
echo run >> log.txt
:: Making sure the loop wont start again until another command
call disable

wait

GOTO loop

:termination
:: Making sure the loop can start again the next time it is active and logging the termination
call revive
echo terminate >> log.txt
GOTO:eof