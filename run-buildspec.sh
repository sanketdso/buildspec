#!/bin/bash
buildspec_file="./buildspec.yaml"
if [ -f "$buildspec_file" ]
then
echo "Executing centralized buildspec..."
source <(grep 'commands' "$buildspec_file")
else
echo "Centralized buildspec not found!"
exit 1
fi
