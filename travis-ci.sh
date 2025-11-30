#!/bin/sh

set -ev

./tools/bazel build --cpu=stm32f4 //...
