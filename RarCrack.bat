@ECHO off
color 02
ECHO RAR registration data>rarreg.key
ECHO h378>>rarreg.key
ECHO github.com/h378>>rarreg.key
ECHO UID=2510e92b1f5ceb89268f>>rarreg.key
ECHO 6412212250268f6da8f73791c142b64409ea218fe57c9d18957844>>rarreg.key
ECHO 30cb87ad2ca11c900b4c6033335fa53c9388e2ea1df1323f493f65>>rarreg.key
ECHO df4d65e5e6bf2028f27fdee575c8b6d615574cebcf477c1280f194>>rarreg.key
ECHO 14a339427d6447429f18de212bac872ac86037fa21af6c4078ce65>>rarreg.key
ECHO b433364c12043c6830ab6f0b9c084d7f9e5c51b929b6d615574ceb>>rarreg.key
ECHO cf477c12299d7730f8af5d5e4dc253f3d7a8d2087e1c239760b1d1>>rarreg.key
ECHO 5904c3a78d11995d2acd0739fee0fbe4bdae44acd4972679315855>>rarreg.key
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