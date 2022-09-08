@echo off
color 06
title PC Extras - Czech Version (1.1.9)
chcp 65001 >nul
MODE con:cols=45 lines=18
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
	echo.
	echo  ███████████████████████████████████████████
	echo  █                                         █
	echo  █ ░█████╗░██████╗░███╗░░░███╗██╗███╗░░██╗ █
	echo  █ ██╔══██╗██╔══██╗████╗░████║██║████╗░██║ █
	echo  █ ███████║██║░░██║██╔████╔██║██║██╔██╗██║ █
	echo  █ ██╔══██║██║░░██║██║╚██╔╝██║██║██║╚████║ █
	echo  █ ██║░░██║██████╔╝██║░╚═╝░██║██║██║░╚███║ █
	echo  █ ╚═╝░░╚═╝╚═════╝░╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝ █
	echo  █                                         █
	echo  ███████████████████████████████████████████
    echo.
    echo    Pro správnou funkci programu, musí být 
	echo    program spuštěn v admin režimu.
	echo.
	echo    Stiskni jakékoliv tlačítko pro
	echo    zaslání žádosti o admin práva...
	pause >nul
	cls
	echo.
	echo  ███████████████████████████████████████████
	echo  █                                         █
	echo  █ ░█████╗░██████╗░███╗░░░███╗██╗███╗░░██╗ █
	echo  █ ██╔══██╗██╔══██╗████╗░████║██║████╗░██║ █
	echo  █ ███████║██║░░██║██╔████╔██║██║██╔██╗██║ █
	echo  █ ██╔══██║██║░░██║██║╚██╔╝██║██║██║╚████║ █
	echo  █ ██║░░██║██████╔╝██║░╚═╝░██║██║██║░╚███║ █
	echo  █ ╚═╝░░╚═╝╚═════╝░╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝ █
	echo  █                                         █
	echo  ███████████████████████████████████████████
    echo.
    echo       Zasílám žádost o administrátora...
	timeout 1 >nul
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
	cls
	color 02
	echo.
	echo  ███████████████████████████████████████████
	echo  █                                         █
	echo  █ ░█████╗░██████╗░███╗░░░███╗██╗███╗░░██╗ █
	echo  █ ██╔══██╗██╔══██╗████╗░████║██║████╗░██║ █
	echo  █ ███████║██║░░██║██╔████╔██║██║██╔██╗██║ █
	echo  █ ██╔══██║██║░░██║██║╚██╔╝██║██║██║╚████║ █
	echo  █ ██║░░██║██████╔╝██║░╚═╝░██║██║██║░╚███║ █
	echo  █ ╚═╝░░╚═╝╚═════╝░╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝ █
	echo  █                                         █
	echo  ███████████████████████████████████████████
    echo.
	echo      Admin práva byla úspěšně povolena!
	echo.
	timeout 2 >nul
:--------------------------------------

chcp 65001 >nul
attrib +R %0
:Start
MODE con:cols=92 lines=66
echo.
echo            ███████████████████████████████████████████████████████████████████████
echo            █                                                                     █ 
echo            █ ██████╗░░█████╗░  ███████╗██╗░░██╗████████╗██████╗░░█████╗░░██████╗ █
echo            █ ██╔══██╗██╔══██╗  ██╔════╝╚██╗██╔╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ █
echo            █ ██████╔╝██║░░╚═╝  █████╗░░░╚███╔╝░░░░██║░░░██████╔╝███████║╚█████╗░ █
echo            █ ██╔═══╝░██║░░██╗  ██╔══╝░░░██╔██╗░░░░██║░░░██╔══██╗██╔══██║░╚═══██╗ █
echo            █ ██║░░░░░╚█████╔╝  ███████╗██╔╝╚██╗░░░██║░░░██║░░██║██║░░██║██████╔╝ █
echo            █ ╚═╝░░░░░░╚════╝░  ╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░ █
echo            █                                                                     █ 
echo            █▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█
echo            █                                                                     █
echo            █                         Author: Vojtěch Adam                        █
echo            █                          Released: 21/9/2020                        █
echo            █                            Version: 1.1.9                           █
echo            █                                                                     █
echo            ███████████████████████████████████████████████████████████████████████
echo.
echo                                  Vítej uživateli %username%!
echo.
echo -------------------------------------------------------------------------------------------
echo                                      ZBYTKOVÉ SOUBORY
echo -------------------------------------------------------------------------------------------
echo.
echo  1  =  Vyčistí C:\Windows\Temp
echo  2  =  Vyčistí C:\Windows\Prefetch
echo  3  =  Vyčistí C:\Users\%username%\AppData\Local\Temp
echo  4  =  Vyčistí odpadkový koš (Ten v PC samozřejmě :D)
echo  all  =  Smaže všechny nadbytkové soubory  [!] I odpadkový koš [!]
echo.
echo -------------------------------------------------------------------------------------------
echo                                        CHYBA DISKU
echo -------------------------------------------------------------------------------------------
echo.
echo  DISM  =  Najde poškozené soubory a opraví je
echo  sfc  =  Najde poškozené soubory a opraví je
echo  chkdsk  =  Zjistí, zda je disk poskozený a pokusí se jej opravit - Může vyžadovat restart!
echo.
echo -------------------------------------------------------------------------------------------
echo                                           WIFI
echo -------------------------------------------------------------------------------------------
echo.
echo  ipconfig  =  Vypíše podrobné informace o aktuálním připojení síťového adaptéru
echo  profiles  =  Vytvoří soubory s podrobnostmi o zapamatovanými WiFi routery
echo  ping  =  Zjistí aktuálni odezvu
echo  DNS  =  Vyprázdní mezipaměť DNS
echo  netstat  =  Zobrazí seznam všech aktivních připojeni TCP
echo.
echo -------------------------------------------------------------------------------------------
echo                                         OSTATNÍ
echo -------------------------------------------------------------------------------------------
echo.
echo  battery  =  Zobrazí chyby a informace o baterii
echo  password  =  Vygeneruje náhodné silné heslo
echo  info  =  Zobrazí podrobné informace o počítači
echo  tasks  =  Zobrazí podrobný list aktivních procesů
echo  explorer  =  Restartuje proces explorer.exe
echo.
echo  edit  =  Povolí úpravy souboru
echo  about  =  Zobrazí podrobnosti o aplikaci
echo  versions  =  Zobrazí aktualní verzi aplikace a její podrobnosti
echo  exit  =  Vypne program :(
echo.
echo -------------------------------------------------------------------------------------------
echo.
title PC Extras - Czech Version (1.1.9)
color 0b

set /p option= Vyber si možnost: 

else && goto :Error)

if %option%==1 color 02
if %option%==1 cls
if %option%==1 rmdir /s /q C:\Windows\Temp
if %option%==1 PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Složka C:\Windows\Temp byla vyčištěna!','PC Extras','Ok','Info')
if %option%==1 goto Start

if %option%==2 color 02
if %option%==2 cls
if %option%==2 rmdir /s /q C:\Windows\Prefetch
if %option%==2 PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Složka C:\Windows\Prefetch byla vyčištěna!','PC Extras','Ok','Info')
if %option%==2 goto Start

if %option%==3 color 02
if %option%==3 cls
if %option%==3 rmdir /s /q C:\Users\%username%\AppData\Local\Temp
if %option%==3 PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Složka %Temp% byla vyčištěna','PC Extras!','Ok','Info')
if %option%==3 goto Start

if %option%==4 color 02
if %option%==4 cls
if %option%==4 del /q /s %systemdrive%\$Recycle.bin\*
if %option%==4 for /d %%x in (%systemdrive%\$Recycle.bin\*) do @rd /s /q "%%x"
if %option%==4 PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Odpadkový koš byl vyčistěn!','PC Extras','Ok','Info')
if %option%==4 goto Start

if %option%==all color 02
if %option%==all cls
if %option%==all rmdir /s /q C:\Windows\Temp
if %option%==all rmdir /s /q C:\Windows\Prefetch
if %option%==all rmdir /s /q C:\Users\%username%\AppData\Local\Temp
if %option%==all del /q /s %systemdrive%\$Recycle.bin\*
if %option%==all for /d %%x in (%systemdrive%\$Recycle.bin\*) do @rd /s /q "%%x"
if %option%==all PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Všechny nadbytkové soubory byly vyčistěny!','PC Extras','Ok','Info')
if %option%==all goto Start

if %option%==DISM cls
if %option%==DISM color 02
if %option%==DISM DISM /Online /Cleanup-Image /RestoreHealth
if %option%==DISM PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Všechny soubory byly zkontrolovány a opraveny!','PC Extras','Ok','Info')
if %option%==DISM goto Start

if %option%==sfc cls
if %option%==sfc color 02
if %option%==sfc echo Probíhá skenování...
if %option%==sfc sfc /scannow
if %option%==sfc PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Všechny soubory byly zkontrolovány a opraveny!','PC Extras','Ok','Info')
if %option%==sfc goto Start

if %option%==chkdsk cls
if %option%==chkdsk goto CheckDiskWarn

if %option%==ipconfig color 02
if %option%==ipconfig cls
if %option%==ipconfig MODE con:cols=92 lines=999
if %option%==ipconfig ipconfig /all
if %option%==ipconfig PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Seznam podrobných informací o aktuálním připojení síťového adaptéru byl vypsán!','PC Extras','Ok','Info')
if %option%==ipconfig echo Zmáčkni jakékoliv tlačítko pro návrat do menu...
if %option%==ipconfig pause >nul
if %option%==ipconfig goto Start

if %option%==profiles color 02
if %option%==profiles cls
if %option%==profiles MODE con:cols=92 lines=999
if %option%==profiles cd C:\Users\%username%\Desktop
if %option%==profiles mkdir Wifi_Profiles_PC_Extras
if %option%==profiles netsh wlan export profile folder=C:\Users\%username%\Desktop\Wifi_Profiles_PC_Extras key=clear
if %option%==profiles cd C:\Users\%username%\Desktop\Wifi_Profiles_PC_Extras
if %option%==profiles start .
if %option%==profiles cls
if %option%==profiles goto Start

if %option%==ping cls
if %option%==ping goto PingBegin

if %option%==DNS cls
if %option%==DNS color 02
if %option%==DNS ipconfig /flushdns
if %option%==DNS PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Mezipamět DNS byla vyprázdněna!','PC Extras','Ok','Info')
if %option%==DNS goto Start

if %option%==netstat color 02
if %option%==netstat cls
if %option%==netstat netstat
if %option%==netstat PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Seznam všech aktivních připojení TCP byl vypsán!','PC Extras','Ok','Info')
if %option%==netstat echo Zmáčkni jakékoliv tlačítko pro návrat do menu...
if %option%==netstat pause >nul
if %option%==netstat goto Start

if %option%==battery color 02
if %option%==battery cls
if %option%==battery powercfg /batteryreport
if %option%==battery PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Informace o baterii byly vypsány! Probíhá automatické otevírání...','PC Extras','Ok','Info')
if %option%==battery battery-report.html
if %option%==battery goto Start

if %option%==info color 02
if %option%==info cls
if %option%==info msinfo32
if %option%==info goto Start

if %option%==tasks color 02
if %option%==tasks MODE con:cols=92 lines=999
if %option%==tasks cls
if %option%==tasks tasklist
if %option%==tasks PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Aktivní procesy v počítači byly vypsané!','PC Extras','Ok','Info')
if %option%==tasks pause >nul
if %option%==tasks echo Zmáčkni jakékoliv tlačítko pro návrat do menu...
if %option%==tasts goto Start

if %option%==explorer color 02
if %option%==explorer cls
if %option%==explorer taskkill /F /IM explorer.exe
if %option%==explorer explorer.exe
if %option%==explorer PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Proces explorer.exe byl restartován!','PC Extras','Ok','Info')
if %option%==explorer goto Start

if %option%==edit goto Select

if %option%==about cls
if %option%==about cd %tmp%
if %option%==about echo ██████╗░░█████╗░  ███████╗██╗░░██╗████████╗██████╗░░█████╗░░██████╗ > PCExtrasAbout.txt
if %option%==about echo ██╔══██╗██╔══██╗  ██╔════╝╚██╗██╔╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ >> PCExtrasAbout.txt
if %option%==about echo ██████╔╝██║░░╚═╝  █████╗░░░╚███╔╝░░░░██║░░░██████╔╝███████║╚█████╗░ >> PCExtrasAbout.txt
if %option%==about echo ██╔═══╝░██║░░██╗  ██╔══╝░░░██╔██╗░░░░██║░░░██╔══██╗██╔══██║░╚═══██╗ >> PCExtrasAbout.txt
if %option%==about echo ██║░░░░░╚█████╔╝  ███████╗██╔╝╚██╗░░░██║░░░██║░░██║██║░░██║██████╔╝ >> PCExtrasAbout.txt
if %option%==about echo ╚═╝░░░░░░╚════╝░  ╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░ >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo INFORMACE O PROGRAMU >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo Jednoduše otevřete soubor a napište, co chcete dělat. >> PCExtrasAbout.txt
if %option%==about echo Pokud to nefunguje, zkuste to otevřít se správcem. >> PCExtrasAbout.txt
if %option%==about echo V případě jakýchkoli problémů mě můžete kontaktovat :) >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo S láskou programovat a dělat užitečné věci, >> PCExtrasAbout.txt
if %option%==about echo vytvořil Vojtěch Adam ve dnech 13/09/2020 - 8/10/2020 >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo Aplikace PC Extras a jeho součásti nejsou chráněny ochrannou známkou  >> PCExtrasAbout.txt
if %option%==about echo a dalšími právy na duševní vlastnictví (neuznanými i čekajícími na neuznání) >> PCExtrasAbout.txt
if %option%==about echo v Česku a v dalších zemích a oblastech. Tento produkt není licencován v souladu >> PCExtrasAbout.txt
if %option%==about echo s Licenčními podmíkami pro software společnosti Vojtěch Adam. >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo Aktuální verze: 1.1.9 (Automatické aktulizace nejsou :D, pokud chceš novou verzi tak mě kontaktuj :)) >> PCExtrasAbout.txt
if %option%==about echo Jazyk: Čenglish :) >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo Autor: Vojtěch Adam >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo. >> PCExtrasAbout.txt
if %option%==about echo  → Zavřením souboru se vrátíš do menu... >> PCExtrasAbout.txt
if %option%==about PCExtrasAbout.txt
if %option%==about del PCExtrasAbout.txt
if %option%==about goto Start

if %option%==versions cls
if %option%==versions cd %tmp%
if %option%==versions echo ██████╗░░█████╗░  ███████╗██╗░░██╗████████╗██████╗░░█████╗░░██████╗ > PCExtrasVersions.txt
if %option%==versions echo ██╔══██╗██╔══██╗  ██╔════╝╚██╗██╔╝╚══██╔══╝██╔══██╗██╔══██╗██╔════╝ >> PCExtrasVersions.txt
if %option%==versions echo ██████╔╝██║░░╚═╝  █████╗░░░╚███╔╝░░░░██║░░░██████╔╝███████║╚█████╗░ >> PCExtrasVersions.txt
if %option%==versions echo ██╔═══╝░██║░░██╗  ██╔══╝░░░██╔██╗░░░░██║░░░██╔══██╗██╔══██║░╚═══██╗ >> PCExtrasVersions.txt
if %option%==versions echo ██║░░░░░╚█████╔╝  ███████╗██╔╝╚██╗░░░██║░░░██║░░██║██║░░██║██████╔╝ >> PCExtrasVersions.txt
if %option%==versions echo ╚═╝░░░░░░╚════╝░  ╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░ >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo HISTORIE VERZÍ >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo Verze 1.1.9 >> PCExtrasVersions.txt
if %option%==versions echo - Přidaná možnost "password" >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo Verze 1.1.8 >> PCExtrasVersions.txt
if %option%==versions echo - Přidaná možnost "edit" >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo Verze 1.1.7 >> PCExtrasVersions.txt
if %option%==versions echo - Přidaná možnost "versions" >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo Verze 1.1.6 >> PCExtrasVersions.txt
if %option%==versions echo - Přidaná možnost "profiles" >> PCExtrasVersions.txt
if %option%==versions echo - Opraveny nějaké překlepy a chyby >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo Verze 1.1.5 >> PCExtrasVersions.txt
if %option%==versions echo - Vylepšena možnost "chkdsk" >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo Verze 1.1.4 >> PCExtrasVersions.txt
if %option%==versions echo - Přidán error při zadání neznámé hodnoty >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo. >> PCExtrasVersions.txt
if %option%==versions echo  → Zavřením souboru se vrátíš do menu... >> PCExtrasVersions.txt
if %option%==versions PCExtrasVersions.txt
if %option%==versions del PCExtrasVersions.txt
if %option%==versions goto Start

if %option%==exit cls
if %option%==exit PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Naschledanou :)','PC Extras','Ok','Info')
if %option%==exit exit


:Error
cls
MODE con:cols=57 lines=17
color 04
 >nul
echo.
echo      ███████████████████████████████████████████████
echo      █                                             █
echo      █ ███████╗██████╗░██████╗░░█████╗░██████╗░██╗ █
echo      █ ██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║ █
echo      █ █████╗░░██████╔╝██████╔╝██║░░██║██████╔╝██║ █
echo      █ ██╔══╝░░██╔══██╗██╔══██╗██║░░██║██╔══██╗╚═╝ █
echo      █ ███████╗██║░░██║██║░░██║╚█████╔╝██║░░██║██╗ █
echo      █ ╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝ █
echo      █                                             █
echo      ███████████████████████████████████████████████
echo.
echo  Možnost %option% nebyla nalezena!
echo  Pokud si myslíš, že jde o chybu, tak se určitě mýlíš :D
echo.
echo  Zmáčkni jakékoliv tlačítko pro návrat do menu...
pause >nul
cls
goto Start


:CheckDiskWarn
MODE con:cols=49 lines=20
color 04
echo.
echo  ███████████████████████████████████████████████
echo  █                                             █
echo  █ ██████╗░░█████╗░███████╗░█████╗░██████╗░██╗ █
echo  █ ██╔══██╗██╔══██╗╚════██║██╔══██╗██╔══██╗██║ █
echo  █ ██████╔╝██║░░██║░░███╔═╝██║░░██║██████╔╝██║ █
echo  █ ██╔═══╝░██║░░██║██╔══╝░░██║░░██║██╔══██╗╚═╝ █
echo  █ ██║░░░░░╚█████╔╝███████╗╚█████╔╝██║░░██║██╗ █
echo  █ ╚═╝░░░░░░╚════╝░╚══════╝░╚════╝░╚═╝░░╚═╝╚═╝ █
echo  █                                             █
echo  ███████████████████████████████████████████████
echo.
echo  Pokud jde o systémový disk (Nejčastěji C:),
echo  bude vyžadován restart systému.
echo.
echo  Po dokončení restatování bude akce
echo  sama pokračovat.
echo.
echo  Pro pokračování zmáčkni jakékoliv tlačítko..
pause >nul
goto CheckDiskBegin


:CheckDiskBegin
SETLOCAL EnableDelayedExpansion
MODE con:cols=73 lines=15
color 06
echo.
echo  ███████████████████████████████████████████████████████████████████████
echo  █                                                                     █
echo  █ ░█████╗░██╗░░██╗███████╗░█████╗░██╗░░██╗██████╗░██╗░██████╗██╗░░██╗ █
echo  █ ██╔══██╗██║░░██║██╔════╝██╔══██╗██║░██╔╝██╔══██╗██║██╔════╝██║░██╔╝ █
echo  █ ██║░░╚═╝███████║█████╗░░██║░░╚═╝█████═╝░██║░░██║██║╚█████╗░█████═╝░ █
echo  █ ██║░░██╗██╔══██║██╔══╝░░██║░░██╗██╔═██╗░██║░░██║██║░╚═══██╗██╔═██╗░ █
echo  █ ╚█████╔╝██║░░██║███████╗╚█████╔╝██║░╚██╗██████╔╝██║██████╔╝██║░╚██╗ █
echo  █ ░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝╚═════╝░╚═╝╚═════╝░╚═╝░░╚═╝ █
echo  █                                                                     █
echo  ███████████████████████████████████████████████████████████████████████
echo.
set /p chkdsk= Vyber disk (Např.: C): 


:Checkdisk
MODE con:cols=73 lines=15
color 06
echo.
echo  ███████████████████████████████████████████████████████████████████████
echo  █                                                                     █
echo  █ ░█████╗░██╗░░██╗███████╗░█████╗░██╗░░██╗██████╗░██╗░██████╗██╗░░██╗ █
echo  █ ██╔══██╗██║░░██║██╔════╝██╔══██╗██║░██╔╝██╔══██╗██║██╔════╝██║░██╔╝ █
echo  █ ██║░░╚═╝███████║█████╗░░██║░░╚═╝█████═╝░██║░░██║██║╚█████╗░█████═╝░ █
echo  █ ██║░░██╗██╔══██║██╔══╝░░██║░░██╗██╔═██╗░██║░░██║██║░╚═══██╗██╔═██╗░ █
echo  █ ╚█████╔╝██║░░██║███████╗╚█████╔╝██║░╚██╗██████╔╝██║██████╔╝██║░╚██╗ █
echo  █ ░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝╚═════╝░╚═╝╚═════╝░╚═╝░░╚═╝ █
echo  █                                                                     █
echo  ███████████████████████████████████████████████████████████████████████
echo.
echo  Vybral sis: !chkdsk:"=!:
timeout 2 >nul

MODE con:cols=73 lines=20
echo.
echo  ███████████████████████████████████████████████████████████████████████
echo  █                                                                     █
echo  █ ░█████╗░██╗░░██╗███████╗░█████╗░██╗░░██╗██████╗░██╗░██████╗██╗░░██╗ █
echo  █ ██╔══██╗██║░░██║██╔════╝██╔══██╗██║░██╔╝██╔══██╗██║██╔════╝██║░██╔╝ █
echo  █ ██║░░╚═╝███████║█████╗░░██║░░╚═╝█████═╝░██║░░██║██║╚█████╗░█████═╝░ █
echo  █ ██║░░██╗██╔══██║██╔══╝░░██║░░██╗██╔═██╗░██║░░██║██║░╚═══██╗██╔═██╗░ █
echo  █ ╚█████╔╝██║░░██║███████╗╚█████╔╝██║░╚██╗██████╔╝██║██████╔╝██║░╚██╗ █
echo  █ ░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝╚═════╝░╚═╝╚═════╝░╚═╝░░╚═╝ █
echo  █                                                                     █
echo  ███████████████████████████████████████████████████████████████████████
echo.
chkdsk !chkdsk:"=!: /r
timeout 1 >nul
goto Start


:PingBegin
SETLOCAL EnableDelayedExpansion
MODE con:cols=35 lines=15
color 06
echo.
echo  █████████████████████████████████
echo  █                               █
echo  █ ██████╗░██╗███╗░░██╗░██████╗░ █
echo  █ ██╔══██╗██║████╗░██║██╔════╝░ █
echo  █ ██████╔╝██║██╔██╗██║██║░░██╗░ █
echo  █ ██╔═══╝░██║██║╚████║██║░░╚██╗ █
echo  █ ██║░░░░░██║██║░╚███║╚██████╔╝ █
echo  █ ╚═╝░░░░░╚═╝╚═╝░░╚══╝░╚═════╝░ █
echo  █                               █
echo  █████████████████████████████████
echo.
set /p ping=  Vyber doménu: 


:Checkdisk
MODE con:cols=60 lines=999999
color 02
ping !ping:"=! -t
goto Start

:Select
MODE con:cols=34 lines=16
SETLOCAL EnableDelayedExpansion
color 06
cls
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
echo  1  =  Přihlásit se
echo  2  =  Zamknout soubor
echo.
set /p option3=Vybral jsem si: 

if %option3%==1 goto User

if %option3%==2 goto Lock

:User
color 06
MODE con:cols=34 lines=16
SETLOCAL EnableDelayedExpansion
cls
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
set /p user=Uživatelské jméno: 

if %user%==kokot goto Pass
else && goto :Err)

:Pass
MODE con:cols=34 lines=16
SETLOCAL EnableDelayedExpansion
cls
color 06
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
echo Uživatelské jméno: !user:"=!
set /p pass=Heslo: 

if %pass%==kkt goto Unlock
else && goto :Err)

:Err
SETLOCAL EnableDelayedExpansion
MODE con:cols=36 lines=19
cls
color 04
echo.
echo   ████████████████████████████████
echo   █                              █
echo   █ ███████╗██████╗░██╗████████╗ █
echo   █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo   █ █████╗░░██║░░██║██║░░░██║░░░ █
echo   █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo   █ ███████╗██████╔╝██║░░░██║░░░ █
echo   █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo   █                              █
echo   ████████████████████████████████
echo.
echo Špatné uživatelské jméno nebo heslo!
echo.
echo  1  =  Opakovat
echo  2  =  Návrat do menu
echo  3  =  Zapomenuté heslo
echo.
set /p option2=Vybral jsem si: 

if %option2%==1 goto User

if %option2%==2 goto Start

if %option2%==3 cls
if %option2%==3 cd %tmp%
if %option2%==3 echo  ██╗░░██╗███████╗░██████╗██╗░░░░░░█████╗░ > PCExtrasHeslo.txt
if %option2%==3 echo  ██║░░██║██╔════╝██╔════╝██║░░░░░██╔══██╗ >> PCExtrasHeslo.txt
if %option2%==3 echo  ███████║█████╗░░╚█████╗░██║░░░░░██║░░██║ >> PCExtrasHeslo.txt
if %option2%==3 echo  ██╔══██║██╔══╝░░░╚═══██╗██║░░░░░██║░░██║ >> PCExtrasHeslo.txt
if %option2%==3 echo  ██║░░██║███████╗██████╔╝███████╗╚█████╔  >> PCExtrasHeslo.txt
if %option2%==3 echo. >> PCExtrasHeslo.txt
if %option2%==3 echo Pokud jsi zapomněl heslo, tak máš smůlu :D >> PCExtrasHeslo.txt
if %option2%==3 echo Nové heslo lze vydat pouze po kontaktování >> PCExtrasHeslo.txt
if %option2%==3 echo autora Vojtěch Adama a pochybuju, že by ti >> PCExtrasHeslo.txt
if %option2%==3 echo to heslo dal... :D >> PCExtrasHeslo.txt
if %option2%==3 echo. >> PCExtrasHeslo.txt
if %option2%==3 echo. >> PCExtrasHeslo.txt
if %option2%==3 echo  → Zavřením souboru se vrátíš do menu... >> PCExtrasHeslo.txt
if %option2%==3 PCExtrasHeslo.txt
if %option2%==3 del PCExtrasHeslo.txt
if %option2%==3 goto Start

:Unlock
SETLOCAL DisableDelayedExpansion
cls
color 02
MODE con:cols=34 lines=15
cls
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
echo    Byl jsi úspěšně přihlášený!
timeout 2 >nul
color 06
cls
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
echo    Probíhá odemykání souboru...
attrib -R >nul %0
timeout 2 >nul
color 02
cls
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
echo    Soubor byl úspěšně odemčen!
timeout 3 >nul
goto Start

:Lock
SETLOCAL DisableDelayedExpansion
cls
MODE con:cols=34 lines=15
color 06
cls
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
echo    Probíhá zamykání souboru...
attrib +R %0
timeout 2 >nul
color 02
cls
echo.
echo  ████████████████████████████████
echo  █                              █
echo  █ ███████╗██████╗░██╗████████╗ █
echo  █ ██╔════╝██╔══██╗██║╚══██╔══╝ █
echo  █ █████╗░░██║░░██║██║░░░██║░░░ █
echo  █ ██╔══╝░░██║░░██║██║░░░██║░░░ █
echo  █ ███████╗██████╔╝██║░░░██║░░░ █
echo  █ ╚══════╝╚═════╝░╚═╝░░░╚═╝░░░ █
echo  █                              █
echo  ████████████████████████████████
echo.
echo    Soubor byl úspěšně zamknut!
timeout 3 >nul
goto Start
