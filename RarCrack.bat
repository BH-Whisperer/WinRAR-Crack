@ECHO off
color 02
ECHO RAR registration data>asd.asd
ECHO BH-Whisperer>>asd.asd
ECHO github.com/BH-Whisperer>>asd.asd
ECHO UID=713a8b6c58cc9250750d>>asd.asd
ECHO 6412212250750da0e45a08245ddd7b763ee99859176f101c1ad7a8>>asd.asd
ECHO 4434fa23785c3dcebb94602e8821984a107b3ec9bc23018d45522a>>asd.asd
ECHO 614c9be80236d7c2e66478536e8a330c41e21bc3a974dc957eb059>>asd.asd
ECHO 3515cd70c3f2dc1f1696ef45d9283b76ff6034378d9298f486866a>>asd.asd
ECHO 2d4272a89cf8f1c604b521e21aecd99172f73cdd85330c41e21bc3>>asd.asd
ECHO a974dc94e9921d97c39d5383c9ba6f0e2131d4d503551457605df7>>asd.asd
ECHO b59ca836f9c08789452bfdabd61b8c1414eed1d2730b2212146747>>asd.asd
PAUSE
@MOVE asd.asd rarreg.key
CLS
@ECHO OFF
ECHO.
ECHO WinRAR Multi Crack V0.3 By h378 (Dec-2021)
ECHO github.com/h378
ECHO Works on Windows 95/98/ME/NT/2000/XP/VISTA/7/8/10/11
ECHO For both 32 and 64 bits
ECHO GNU General Public License v3.0
ECHO.
echo          __           __           __         __          
echo         /\_\         /\ \         / /\       / /\         
echo        / / /        /  \ \       / /  \     / /  \        
echo       / /_/        / /\ \ \     / / /\ \   / / /\ \       
echo      / /\ \____   / / /\ \ \   / / /\ \ \ /_/ /\ \ \      
echo     / /\ \_____\  \/_//_\ \ \ /_/ /  \ \ \\ \ \_\ \ \     
echo    / / /\/___/ /    __\___ \ \\_\/    \ \ \\ \/__\ \ \    
echo   / / /   / / /    / /\   \ \ \        \ \ \\_____\ \ \   
echo  / / /   / / /    / /_/____\ \ \        \ \ \\ \ \_\ \ \  
echo / / /   / / /    /__________\ \ \        \ \ \\ \___\ \ \ 
echo \/_/    \/_/     \_____________\/         \_\/ \_______\/ 
echo.                                                           
ECHO 

PAUSE

IF NOT EXIST rarreg.key GOTO error_1

ECHO Choose language  -  Elija idioma
ECHO [1] Espanol  -  [2] English
CHOICE /C:12 
IF ERRORLEVEL 2 GOTO set_eng
IF ERRORLEVEL 1 GOTO set_es
PAUSE




:set_eng
ECHO 
ECHO eligio ingles
pause
set sinwrar=WinRAR not found, exiting...
SET fail1=Unexpected error while cracking, check write permissions
SET sal=Exiting...
SET exito=WinRAR Cracked successfully
SET crack=Cracking...
SET path1=c:\progra~1\WinRAR\
SET error=Write error, excecute crack from a folder with write privilege.
SET error2=Crack failed, if you didn't, try running the crack with Admin privileges.
SET lang=Choose Windows language
SET found32=32 bits version of WinRAR found
SET found64=64 bits version of WinRAR found
SET noRAR=WinRAR not found
GOTO testOS

:set_es
ECHO 
ECHO eligio español
pause
set sinwrar=WinRAR no encontrado, saliendo...
SET fail1=Error inesperado al crackear, revisar permisos de escritura
SET sal=Saliendo...
SET exito=WinRAR Crackeado con exito
SET crack=Crackeando...
SET path1=c:\archiv~1\WinRAR\
SET error=Error de escritura, ejecute el crack desde un directorio donde pueda escribir archivos.
SET error2=WinRAR no se pudo crackear, revise si necesita permisos de administrador.
SET lang=Elija idioma de Windows
SET found32=WinRAR de 32 bits encontrado
SET found64=WinRAR de 64 bits encontrado
set noRAR=WinRAR no encontrado
GOTO testOS

:testOS
ECHO %sinwrar%
ECHO %fail1%
ECHO %sal%
echo %exito%
echo %crack%
echo %path1%
echo %error%
pause
IF EXIST "%WINDIR%\COMMAND.COM" GOTO W95
IF NOT EXIST "%WINDIR%\COMMAND.COM" GOTO WNT
PAUSE

:WNT
ECHO 
ECHO.
ECHO -----------------------------------------------
ECHO I Windows NT/2000/XP/VISTA/7/8/10/11 DETECTED I
ECHO -----------------------------------------------
ECHO.



IF NOT EXIST "%ProgramFiles(x86)%\WinRAR\WinRAR.exe" (
  IF NOT EXIST "%ProgramFiles%\WinRAR\WinRAR.exe" (
    GOTO sin_winrar
  )
)
IF EXIST "%ProgramFiles(x86)%\WinRAR\rarreg.key" GOTO ya_crackeado
IF EXIST "%ProgramFiles%\WinRAR\rarreg.key" GOTO ya_crackeado

:crackear
IF EXIST "%ProgramFiles(x86)%\WinRAR\WinRAR.exe" GOTO 32bits
IF EXIST "%ProgramFiles%\WinRAR\WinRAR.exe" GOTO 64bits

:32bits
ECHO %found32%
ECHO %crack%
ECHO 
@MOVE rarreg.key "%ProgramFiles(x86)%\WinRAR\"
IF %ERRORLEVEL% equ 0 (
    ECHO %exito%
	GOTO salir
) ELSE (
  IF %ERRORLEVEL% equ 1 (
      ECHO %error2%
	  GOTO salir
   )
)

:64bits
ECHO %found64%
ECHO %crack%
ECHO 
@MOVE rarreg.key "%ProgramFiles%\WinRAR\"
IF %ERRORLEVEL% equ 0 (
    ECHO %exito%
    GOTO salir
) ELSE (
  IF %ERRORLEVEL% equ 1 (
      ECHO %error2%
	  GOTO salir
   )
)

:ya_crackeado
ECHO 
ECHO WinRAR ya estaba crackeado
ECHO Desea volver a crackear? [S] Si  -  [N] No
CHOICE /C:SN
IF ERRORLEVEL  1 (
    GOTO crackear
) ELSE (
  IF ERRORLEVEL 2 (
	  @ECHO . 
	  GOTO salir
   )
)






:W95
ECHO 
ECHO. 
ECHO -----------------------------
ECHO I Windows 95/98/ME DETECTED I
ECHO -----------------------------
ECHO.
ECHO %lang%
ECHO [1] Espanol  -  [2] English  -  [3] Other
CHOICE /C:123
IF ERRORLEVEL 3 GOTO w95_other
IF ERRORLEVEL 2 GOTO w95_eng
IF ERRORLEVEL 1 GOTO w95_es



:w95_es
ECHO 
IF NOT EXIST "%path1%\WinRAR.exe" GOTO sin_winrar
ECHO %crack%
@MOVE rarreg.key "%path1%"
IF ERRORLEVEL 0 GOTO exito
IF ERRORLEVEL 1 GOTO fail
GOTO salir


:w95_eng
ECHO 
IF NOT EXIST "%path1%\WinRAR.exe" GOTO sin_winrar
ECHO %crack%
@MOVE rarreg.key "%path1%"
IF ERRORLEVEL 0 GOTO exito
IF ERRORLEVEL 1 GOTO fail
GOTO salir

:w95_other
ECHO 
ECHO.
ECHO You will have to manually the copy file "rarreg.key" that has been generated
ECHO into WinRAR's install folder (the same folder where WinRAR.exe is).
ECHO ----------------------------------------------------------------------------
ECHO Se ha generado un archivo llamado "rarreg.key" que debe ser copiado al
ECHO directorio de WinRAR (el mismo directorio donde se encuentra WinRAR.exe).
ECHO.
PAUSE
EXIT

:exito
ECHO 
    ECHO %exito%
	ECHO %sal%
	GOTO salir
	


:fail
ECHO 
	ECHO %fail1%
	ECHO %sal%
	GOTO salir


:sin_winrar
ECHO 
REM CLS
ECHO %sinwrar%
GOTO salir



:error_1
ECHO 
ECHO.
ECHO %error%
GOTO salir

:salir
ECHO 

REM CLS

ECHO.
ECHO %sal%
PAUSE
DEL RARREG.KEY
CLS
EXIT