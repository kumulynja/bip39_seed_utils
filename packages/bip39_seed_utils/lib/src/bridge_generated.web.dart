// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.78.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class Bip39SeedUtilsPlatform extends FlutterRustBridgeBase<Bip39SeedUtilsWire> with FlutterRustBridgeSetupMixin {
  Bip39SeedUtilsPlatform(FutureOr<WasmModule> dylib) : super(Bip39SeedUtilsWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  List<dynamic> api2wire_box_autoadd_mnemonic(Mnemonic raw) {
    return api2wire_mnemonic(raw);
  }

  @protected
  int api2wire_box_autoadd_u32(int raw) {
    return api2wire_u32(raw);
  }

  @protected
  List<dynamic> api2wire_mnemonic(Mnemonic raw) {
    return [
      api2wire_String(raw.phrase),
      api2wire_language(raw.language)
    ];
  }

  @protected
  int? api2wire_opt_box_autoadd_u32(int? raw) {
    return raw == null ? null : api2wire_box_autoadd_u32(raw);
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }

// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external Bip39SeedUtilsWasmModule get wasmModule;

@JS()
@anonymous
class Bip39SeedUtilsWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external Bip39SeedUtilsWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_new__static_method__Mnemonic(NativePortType port_, int language, int word_count);

  external dynamic /* void */ wire_from_phrase__static_method__Mnemonic(NativePortType port_, String phrase);

  external dynamic /* void */ wire_derive_lightning_seed__method__Mnemonic(NativePortType port_, List<dynamic> that, int network, int? hardened_child_index);
}

// Section: WASM wire connector

class Bip39SeedUtilsWire extends FlutterRustBridgeWasmWireBase<Bip39SeedUtilsWasmModule> {
  Bip39SeedUtilsWire(FutureOr<WasmModule> module) : super(WasmModule.cast<Bip39SeedUtilsWasmModule>(module));

  void wire_new__static_method__Mnemonic(NativePortType port_, int language, int word_count) => wasmModule.wire_new__static_method__Mnemonic(port_, language, word_count);

  void wire_from_phrase__static_method__Mnemonic(NativePortType port_, String phrase) => wasmModule.wire_from_phrase__static_method__Mnemonic(port_, phrase);

  void wire_derive_lightning_seed__method__Mnemonic(NativePortType port_, List<dynamic> that, int network, int? hardened_child_index) => wasmModule.wire_derive_lightning_seed__method__Mnemonic(port_, that, network, hardened_child_index);
}
