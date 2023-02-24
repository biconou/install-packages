#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

PLAYBOOK=$1
sudo ansible-playbook  ${PLAYBOOK}_playbook.yml