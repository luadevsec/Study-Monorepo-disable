@echo off
setlocal
title Project Creator
color 0d

:: Caminho base (ajustado para usar o diretório raiz como base)
set "base_path=%~dp0..\..\"

:: Caminho para o arquivo architecture-layout.md
set "layout_file=%~dp0architecture-Layout.md"

:: Solicita o nome do projeto
set /p project_name="Enter the name of the project: "

:: Solicita a linguagem utilizada
set /p language="Enter the language used (Java, JavaScript, Node.js, etc.): "

:: Solicita a descrição do projeto
set /p project_description="Enter a description of the project: "

:: Define o caminho do novo projeto com base na linguagem
set "project_path=%base_path%%language%\%project_name%"

:: Verifica se o diretório do projeto já existe
if exist "%project_path%" (
    echo Project directory already exists: %project_path%
    exit /b 1
)

:: Cria o diretório do projeto
mkdir "%project_path%"
if not exist "%project_path%" (
    echo Failed to create directory: %project_path%
    exit /b 1
)

:: Lê o arquivo de layout e cria a estrutura de pastas
for /f "usebackq delims=" %%a in ("%layout_file%") do (
    :: Adicione este comando echo para depurar
    echo Creating folder: "%%a"
    
    :: Cria a pasta relativa ao caminho do projeto
    mkdir "%project_path%\%%a"
)

:: Verifique se a criação das pastas foi bem-sucedida
if errorlevel 1 (
    echo Error creating folders from the layout file.
    exit /b 1
)

:: Atualiza o README.md da linguagem com o link para o projeto e a descrição fornecida
set "readme_language=%base_path%%language%\README.md"

echo - [%project_name%](./%project_name%) - %project_description% >> "%readme_language%"

:: Verifique se a atualização do README.md foi bem-sucedida
if errorlevel 1 (
    echo Error updating the README.md file.
    exit /b 1
)

:: Notifica o usuário que a operação foi concluída
echo Project created successfully
echo Language README updated successfully

:: Pausa até que o usuário pressione uma tecla para continuar
pause >nul
endlocal
