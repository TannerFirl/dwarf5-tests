#!/bin/bash

# $1 is docker image (e.g. gcc)
# $2 is optional command
script_dir="$(dirname $(realpath ${BASH_SOURCE[0]}))"
script_dir_basename="$(basename $script_dir)"
echo "script_dir=$script_dir script_dir_basename=$script_dir_basename"
# script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
script_realpath=$(realpath (dirname "$0"))
echo "script_dir=$script_dir script_realpath=$script_realpath"
docker run -v $script_dir:/$script_dir_basename -it $1 #$2