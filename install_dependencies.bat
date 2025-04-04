@echo off
echo Setting up your Flask project...

:: Navigate to script directory
cd /d "%~dp0"

:: Check if Python is installed
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Please install Python first.
    pause
    exit /b
)

:: Create and activate virtual environment
python -m venv venv
call venv\Scripts\activate.bat

:: Install packages
pip install -r requirements.txt

echo All dependencies installed successfully.
pause
