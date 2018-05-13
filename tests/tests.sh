#!/bin/bash

set -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

for SCRIPT in ./run_*sh
do
  if [ -f $SCRIPT -a -x $SCRIPT ]
  then
    echo -e "\n## Running $SCRIPT"
    $SCRIPT --test
  fi
done