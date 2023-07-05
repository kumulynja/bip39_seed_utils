#!/bin/bash

CURR_VERSION=bip39_seed_utils-v`awk '/^version: /{print $2}' packages/bip39_seed_utils/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_bip39_seed_utils/ios/flutter_bip39_seed_utils.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_bip39_seed_utils/macos/flutter_bip39_seed_utils.podspec
rm packages/flutter_bip39_seed_utils/macos/*.bak packages/flutter_bip39_seed_utils/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_bip39_seed_utils/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_bip39_seed_utils/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_bip39_seed_utils/
