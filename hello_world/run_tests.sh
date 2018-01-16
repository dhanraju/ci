#!/usr/bin/env bash
set -e 

# . ~/.virtualenvs/python2.7/bin/activate

bazel test main:helloworld_test
