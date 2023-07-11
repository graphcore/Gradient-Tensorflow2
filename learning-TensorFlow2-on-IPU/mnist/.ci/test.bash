#!/usr/bin/env bash
# Copyright (c) 2023 Graphcore Ltd. All rights reserved.

###
# Here run your tests
# JUnit XML files with the pattern `*report.xml` will be published as a test report
###

# cd to app root directory
cd "$(dirname "$0")"/..

# Run tests
python3 -m pytest --junitxml=report.xml .
