@echo off
:: Writes the code to run in the "run.bat" file relative bat folder

cd core
del run.bat
echo @echo off >> run.bat
echo ..\bat\%~1 >> run.bat

call enable
cd ..
