@echo off
setlocal
title Repository Creator
color 0d

:: Caminho base, certifique que tenha um Layout.md no mesmo diretório para ser copiado para o novo repositório
set "base_path=%~dp0"
:: Caminho do README.md principal para atualizar com o novo repositório
set "main_readme=%~dp0..\..\README.md"
:: Diretório atual para o script 
cd "%~dp0"


set /p repository_name="Enter the name of the new repository: "
:: Cria um novo diretório para o repositório
mkdir "%base_path%..\..\%repository_name%"
if not exist "%base_path%..\..\%repository_name%" (
    echo Failed to create directory: %repository_name%
    exit /b 1
)

:: Tenta copiar Layout.md para o novo repositório
copy "%base_path%Layout.md" "%base_path%..\..\%repository_name%\README.md" >nul
if errorlevel 1 (
    :: Se não encontrou Layout.md, cria um README.md vazio
    echo Layout.md not found, creating an empty README.md in %repository_name%
    type nul > "%base_path%..\..\%repository_name%\README.md"
) else (
    :: Substitui '<language>' por '%repository_name%' no README.md
    powershell -Command "(Get-Content '%base_path%..\..\%repository_name%\README.md') -replace '<language>', '%repository_name%' | Set-Content '%base_path%..\..\%repository_name%\README.md'"
    if errorlevel 1 (
        echo Failed to update README.md in %repository_name%
        exit /b 1
    )
)

:: Atualiza o README.md principal com o novo repositório
echo  - [%repository_name%](./%repository_name%/README.md) >> "%main_readme%"


:: Limpa a tela e notifica o usuário que a operação foi concluída
cls
echo Done in ./%repository_name%
pause >nul
endlocal
