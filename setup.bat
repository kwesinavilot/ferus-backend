@echo off

REM Create a virtual environment
echo Creating virtual environment...
python -m venv virenv

REM Activate the virtual environment
echo Activating virtual environment...
call virenv\Scripts\activate

REM Install Django
echo Installing Django...
pip install django

REM Start a new Django project called 'ferus'
echo Starting Django project 'ferus'...
django-admin startproject ferus

REM Navigate into the project directory
cd ferus

REM Create the core part called 'engine'
echo Creating core part 'engine'...
django-admin startapp engine

REM Start apps called 'uauth', 'articles', 'department', 'accounts'
echo Creating app 'users'...
django-admin startapp users

echo Creating app 'articles'...
django-admin startapp articles

echo Creating app 'department'...
django-admin startapp department

echo Creating app 'accounts'...
django-admin startapp accounts

echo Creating app 'uauth'...
django-admin startapp uauth

echo Django project setup complete!