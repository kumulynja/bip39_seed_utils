import 'dart:ffi';

import 'package:bip39_seed_utils/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

Bip39SeedUtils createWrapperImpl(ExternalLibrary dylib) =>
    Bip39SeedUtilsImpl(dylib);
