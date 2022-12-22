#!/usr/bin/env bash

set -e

# as the data is stored "statically" in the image as well as in the volume, we
# make sure to delete them to be sure to start with a clean situation
# `-v` removes the voumes
# `--rmi all` removes the image (containing a CSV snapshot) 
docker compose down -v --rmi all
rm ./DB_dockerDir/submissions.csv
