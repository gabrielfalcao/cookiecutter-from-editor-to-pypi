#!/bin/bash

tput clear
venv_path="$(pwd)/__virtualenv__"
activate_path="${venv_path}/bin/activate"
stdout_log="cookiecutter.stdout.log"
stderr_log="cookiecutter.stderr.log"

function section() {
    echo -e "\033[1;33m${*}\033[0m"
}

echo -e "In case of error check the logs at"
echo -e "\t\033[1;34m${stdout_log}\033[0m"
echo -e "\t\033[1;31m${stderr_log}\033[0m"

section "Creating virtual env for {{cookiecutter.project_name}} at \033[1;34m${venv_path}"

if ! virtualenv -p "{{cookiecutter.python_binary}}" "${venv_path}"  >> cookiecutter.stdout.log 2>>cookiecutter.stderr.log; then
    >2 echo -e "\033[1;31mFailed to create virtualenv at \033[1;34m${venv_path}\033[0sm"
    exit 1
fi

set -e
section "Activating virtualenv at \033[1;32m${venv_path}"
source __virtualenv__/bin/activate

section "Upgrading pip to latest version"
pip install -U pip  >> cookiecutter.stdout.log 2>>cookiecutter.stderr.log

section "Installing dependencies for local development"
pip install -r development.txt  >> cookiecutter.stdout.log 2>>cookiecutter.stderr.log

section "Making \"{{cookiecutter.pypi_name}}\" available within virtualenv"
python setup.py develop

section "Creating git repository"
git init  >> cookiecutter.stdout.log 2>>cookiecutter.stderr.log

section "Creating initial commit"
git add .  >> cookiecutter.stdout.log 2>>cookiecutter.stderr.log
git commit -am "{{cookiecutter.project_name}} initial commit."  >> cookiecutter.stdout.log 2>>cookiecutter.stderr.log

echo -e "\033[1;32m"
echo -e "{{cookiecutter.project_name}} is ready for development"
echo -e "\033[1;34m"
echo -e "next steps:"
echo -e "\033[0m"
echo -e "cd {{cookiecutter.pypi_name}}"
echo -e "source ${activate_path}"
echo -e "make"
echo

# rm -f "${stdout_log}" "${stderr_log}"
# make || echo -e "\ncd {{cookiecutter.pypi_name}}\n"
