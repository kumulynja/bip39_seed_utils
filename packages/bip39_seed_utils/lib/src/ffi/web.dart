import 'package:bip39_seed_utils/src/bridge_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

Bip39SeedUtils createWrapperImpl(ExternalLibrary module) =>
    Bip39SeedUtilsImpl.wasm(module);
