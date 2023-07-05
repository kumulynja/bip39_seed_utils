import 'package:bip39_seed_utils/bip39_seed_utils.dart';

void main() async {
  final newEnglishMnemonicWith12Words =
      await Bip39SeedUtilsBase.newMnemonic(Language.English, WordCount.Words12);
  print('English - 12 words:');
  print(newEnglishMnemonicWith12Words.phrase);

  final newSpanishMnemonicWith24Words =
      await Bip39SeedUtilsBase.newMnemonic(Language.Spanish, WordCount.Words24);
  print('Spanish - 24 words:');
  print(newSpanishMnemonicWith24Words.phrase);

  const englishRecoveryPhrase =
      'crash rookie drastic defense response speed warfare tiny crumble dolphin kiss little';
  final englishMnemonic =
      await Bip39SeedUtilsBase.fromPhrase(englishRecoveryPhrase);
  assert(englishMnemonic.language == Language.English);

  const spanishRecoveryPhrase =
      'promesa trauma trueno rico fuerza remar baile variar hueso ganga soltar nadar desayuno anemia artista pauta tubo ayuda guardia brazo paro pierna fobia monja';
  final spanishMnemonic =
      await Bip39SeedUtilsBase.fromPhrase(spanishRecoveryPhrase);
  assert(spanishMnemonic.language == Language.Spanish);

  final unifiedWalletMnemonic =
      await Bip39SeedUtilsBase.newMnemonic(Language.English, WordCount.Words24);
  final lightningSeed =
      await unifiedWalletMnemonic.deriveLightningSeed(network: Network.Bitcoin);
  final lightningSeedHex = lightningSeed
      .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
      .join();
  print('Lightning seed as hex: $lightningSeedHex');
}
