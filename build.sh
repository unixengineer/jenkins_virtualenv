#!/bin/bash
# WORKSPACE=~/Code
export PATH=$WORKSPACE/venv/bin:/usr/local/bin:$PATH
if [ ! -d "venv" ]; then
        virtualenv venv
fi
. venv/bin/activate

pip install -r requirements.txt --download-cache=/tmp/$JOB_NAME

