import 'dart:ffi';
import 'dart:io';

import '../bridge_generated.dart';
import '../ffi.dart';

const dylibPath = '../../target/debug/libbip39_seed_utils.dylib';
final DynamicLibrary dylib = DynamicLibrary.open(dylibPath);
/*final DynamicLibrary dylib = Platform.isIOS
    ? DynamicLibrary.process()
    : Platform.isMacOS
        ? DynamicLibrary.executable()
        : DynamicLibrary.open('libbip39_seed_utils.so');*/
Bip39SeedUtils loaderApi = createWrapper(dylib);
