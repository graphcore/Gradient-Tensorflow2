#!/usr/bin/env bash
# Copyright (c) 2023 Graphcore Ltd. All rights reserved.

###
# Here run your prerequisites before running the tests
###

# cd to app root directory
cd "$(dirname "$0")"/..

# System packages
export DEBIAN_FRONTEND=noninteractive
apt-get update
if [ -f required_apt_packages.txt ]; then apt-get install -y $(< required_apt_packages.txt); fi

# Upgrade pip
python3 -m pip install --upgrade pip

# Python packages
for requirements in $(find . -name requirements.txt); do
    python3 -m pip install -r $requirements
done

echo "Python version: $(python3 --version)"
echo "Pip version: $(python3 -m pip --version)"
