@echo off
chcp 65001 >nul
title FS Performance 360
cd /d "%~dp0"

set "PYTHON=C:\Users\Usuário\AppData\Local\Programs\Python\Python313\python.exe"

if not exist "%PYTHON%" (
  echo Python não encontrado neste computador.
  echo Avise ao responsável pela plataforma.
  pause
  exit /b 1
)

"%PYTHON%" "%~dp0server.py"

if errorlevel 1 (
  echo.
  echo Não foi possível iniciar a plataforma.
  echo Verifique se outra janela da plataforma já está aberta.
  pause
)
