import 'bridge_generated.dart';
import 'utils/loader.dart'; // Import the loader

class Bip39SeedUtilsBase {
  // Utilize loaderApi from loader.dart
  static final Bip39SeedUtils _bip39SeedUtils = loaderApi;

  // Method to create a new mnemonic
  static Future<Mnemonic> newMnemonic(Language language, WordCount wordCount) {
    return Mnemonic.newMnemonic(
        bridge: _bip39SeedUtils, language: language, wordCount: wordCount);
  }

  // Method to create a mnemonic object from an existing phrase
  static Future<Mnemonic> fromPhrase(String phrase) {
    return Mnemonic.fromPhrase(bridge: _bip39SeedUtils, phrase: phrase);
  }
}
