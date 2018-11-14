# Example use of rules_mbed #

This repository provides an example project which uses rules_mbed
(https://github.com/mjbots/rules_mbed) to build mbed based STM32F4
projects.  It configures two build targets for two different mbed
targets, and a target for host based testing.

* License: Apache 2.0
* SemaphoreCI [![Build Status](https://semaphoreci.com/api/v1/jpieper/rules_mbed_example/branches/master/badge.svg)](https://semaphoreci.com/jpieper/rules_mbed_example)

To compile and run all host based tests:

```
tools/bazel test //...
```

To compile all mbed targets in optimized mode:

```
tools/bazel test -c opt --cpu=stm32f4 //...
ll bazel-bin/example/*.bin
```
