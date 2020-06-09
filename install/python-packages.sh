#!/bin/env sh

# install python modules

# check that we have the right version of pip3
PIP_VERSION=$(pip3 --version | awk '{print $2}')
echo "Pip version is ${PIP_VERSION}"
if [[ $PIP_VERSION == "19."* ]]; then
  # aws development
  echo aws tools
  #pip3 install --user --upgrade pip3 
  pip3 install --user --upgrade botocore
  pip3 install --user boto3
  pip3 install --user awscli
  echo linters
  pip3 install --user flake8
  pip3 install --user yamllint
  pip3 install --user cfn-lint
fi
