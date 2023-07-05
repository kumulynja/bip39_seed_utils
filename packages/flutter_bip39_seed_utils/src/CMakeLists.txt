# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_bip39_seed_utils_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_bip39_seed_utils SHARED
  "flutter_bip39_seed_utils.c"
)

set_target_properties(flutter_bip39_seed_utils PROPERTIES
  PUBLIC_HEADER flutter_bip39_seed_utils.h
  OUTPUT_NAME "flutter_bip39_seed_utils"
)

target_compile_definitions(flutter_bip39_seed_utils PUBLIC DART_SHARED_LIB)
