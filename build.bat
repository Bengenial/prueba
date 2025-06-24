@echo off
echo 🛠 Compilando el juego de Poker Texas Hold'em...

REM Crear carpeta build si no existe
if not exist build mkdir build

REM Compilar usando los headers y librerías locales
gcc src\poker.c src\tdasPoker\*.c src\tdas\*.c -Iinclude -o build\poker.exe -Llib -lraylib -lopengl32 -lgdi32 -lwinmm

IF %ERRORLEVEL% NEQ 0 (
    echo ❌ Error en la compilación.
    pause
    exit /b
)

echo ✅ Compilación exitosa.

echo 🚀 Ejecutando el juego...
build\poker.exe
