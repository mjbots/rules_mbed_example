# -*- python -*-

# Copyright 2018 Josh Pieper, jjp@pobox.com.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@com_github_ARMmbed_mbed-os//:rules.bzl", nucleo_446_binary = "mbed_binary")
load("@com_github_ARMmbed_mbed-os-nucleo411//:rules.bzl", nucleo_411_binary = "mbed_binary")

cc_library(
    name = "common",
    hdrs = ["common.h"],
    srcs = ["common.cc"],
    restricted_to = [
        "@com_github_mjbots_rules_mbed//tools:k8",
        "@com_github_mjbots_rules_mbed//tools:stm32f4",
    ],
)

cc_test(
    name = "common_test",
    deps = [":common"],
    srcs = ["common_test.cc"],
    restricted_to = ["@com_github_mjbots_rules_mbed//tools:k8"],
)

nucleo_446_binary(
    name = "example1-446ZE",
    srcs = ["example1.cc",],
    deps = [":common"],
    restricted_to = ["@com_github_mjbots_rules_mbed//tools:stm32f4"],
)

nucleo_411_binary(
    name = "example1-411RE",
    srcs = ["example1.cc",],
    deps = ["common"],
    restricted_to = ["@com_github_mjbots_rules_mbed//tools:stm32f4"],
)
