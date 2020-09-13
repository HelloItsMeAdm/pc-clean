@echo off
echo Vytvoril Vojtech Adam 13/09/2020
echo.
echo P)ppppp    C)ccc          C)ccc  l)L                          
echo P)    pp  C)   cc        C)   cc  l)                          
echo P)ppppp  C)             C)        l)  e)EEEEE a)AAAA  n)NNNN  
echo P)       C)             C)        l)  e)EEEE   a)AAA  n)   NN 
echo P)        C)   cc        C)   cc  l)  e)      a)   A  n)   NN 
echo P)         C)ccc          C)ccc  l)LL  e)EEEE  a)AAAA n)   NN 
echo.
echo 1 = C:\Windows\Temp
echo 2 = C:\Windows\Prefetch
echo 3 = %temp%
echo All = Smaze vsechny nadbytkove soubory
echo.
set /p option=Vyber si moznost: 

if %option%==1 rmdir /s /q C:\Windows\Temp
if %option%==1 cls
if %option%==1 PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Slozka C:\Windows\Temp byla vycistena!','PC Clean','Ok','Info')
if %option%==1 exit


if %option%==2 rmdir /s /q C:\Windows\Prefetch
if %option%==2 cls
if %option%==2 PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Slozka C:\Windows\Prefetch byla vycistena!','PC Clean','Ok','Info')
if %option%==2 exit


if %option%==3 rmdir /s /q C:\Users\spravce\AppData\Local\Temp
if %option%==3 cls
if %option%==3 PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Slozka %Temp% byla vycistena','PC Clean!','Ok','Info')
if %option%==3 exit

if %option%==all rmdir /s /q C:\Windows\Temp
if %option%==all rmdir /s /q C:\Windows\Prefetch
if %option%==all rmdir /s /q C:\Users\spravce\AppData\Local\Temp
if %option%==all cls
if %option%==all PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Vsechny nadbytkove soubory byly vycisteny!','PC Clean','Ok','Info')
if %option%==all exit


if %option%==All rmdir /s /q C:\Windows\Temp
if %option%==All rmdir /s /q C:\Windows\Prefetch
if %option%==All rmdir /s /q C:\Users\spravce\AppData\Local\Temp
if %option%==All cls
if %option%==All PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Vsechny nadbytkove soubory byly vycisteny!','PC Clean','Ok','Info')
if %option%==All exit
