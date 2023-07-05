// lib/src/ffi.dart
import 'package:bip39_seed_utils/bip39_seed_utils.dart';
import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';

Bip39SeedUtils createLib() => createWrapper(createLibraryImpl());
