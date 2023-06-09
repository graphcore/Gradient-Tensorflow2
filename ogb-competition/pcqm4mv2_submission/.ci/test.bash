#!/usr/bin/env bash
# Copyright (c) 2022 Graphcore Ltd. All rights reserved.

###
# Here run your tests
# JUnit XML files with the patten `*report.xml` will be published as a test report
###

# cd to app root directory and add `utils/examples_tests` to PYTHONPATH
cd "$(dirname "$0")"/..
export PYTHONPATH=$(cd ../../../utils; pwd):$PYTHONPATH

# Run tests
python3 -m pytest -n10 --forked --junitxml=report.xml --rootdir=../../..
