import 'package:bip39_seed_utils/src/bridge_generated.dart';

/// Represents the external library for bip39_seed_utils
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

Bip39SeedUtils createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();
