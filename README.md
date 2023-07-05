# BIP39 Seed Utils

## Motivation

Bitcoin Development Kit (BDK) is the go-to library for Bitcoin application development. It is written in Rust, but packages in Flutter exist already that, similarly to this repo, use flutter_rust_bridge to bring the BDK Rust API to Flutter.
This package however, instead of just exposing the Rust API to Flutter, builds some extra functionalities with BDK in Rust directly and bridges those to both raw Dart and Flutter.
It also focuses especifically on utilities for creating a unified Bitcoin/Lightning wallet instead of the whole BDK API.

## Backlog & Progress

- [x] Generate Mnemonic in English and Spanish and different word counts in Rust
- [x] Recover Mnemonic from a phrase
- [x] Derive a seed for a Lightning node from the same mnemonic that can be used by an on-chain wallet in Rust
- [x] Bridge to Dart
- [ ] Bridge to Flutter
- [ ] Setup ci-cd with Melos
- [ ] Publish packages
