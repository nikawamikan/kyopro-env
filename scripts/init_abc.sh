#!/bin/bash

BASEDIR=${1}

# init atcoder-cli 
cd ./ABC
acc new ${2} -c all

# copy template
for v in `ls -d ./${2}/*/`; do
    cp ${BASEDIR}/templates/* ${v}
done

# open vscode
code ./${2}