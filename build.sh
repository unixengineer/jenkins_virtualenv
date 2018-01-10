#!/bin/bash

# Workspace env would be set by Jenkins
export PATH=${WORKSPACE}/venv/bin:/usr/local/bin:${PATH}
if [ ! -d "venv" ]; then
        virtualenv venv
fi

# if you want a fresh build everytime, delete and create a new virtualenv
rmvirtualenv venv

# Activate this virtualenv
. venv/bin/activate

pip install -r requirements.txt --download-cache=/tmp/${JOB_NAME} --upgrade

## Lets now check what version shows up
aws --version
