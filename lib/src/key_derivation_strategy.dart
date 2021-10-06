import 'dart:typed_data';

import 'package:subsocial_flutter_auth/src/crypto.dart';

/// [KeyDerivationStrategy] provides a way to drive encryption keys.
class KeyDerivationStrategy {
  final Crypto _crypto;

  /// Creates [KeyDerivationStrategy]
  KeyDerivationStrategy(this._crypto);

  /// Drive an encryption key of length [length] from a [password] and a [salt]
  Future<Uint8List> driveKey(int length, Uint8List password, Uint8List salt) {
    return _crypto.hash(
      plain: password,
      salt: salt,
      outputLength: length,
    );
  }
}
