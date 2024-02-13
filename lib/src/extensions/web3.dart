import 'dart:math';
import 'dart:typed_data';

/// Extensions for Ethereum address validation and conversion.
extension RushEthereumAddressExtensions on String {
  /// Validates Ethereum address format.
  /// Example: `'0xabc123...'.isValidEthereumAddress()`
  /// returns `true` or `false` based on the address format.
  bool isValidEthereumAddress() {
    final ethAddressPattern = RegExp(r'^0x[a-fA-F0-9]{40}$');
    return ethAddressPattern.hasMatch(this);
  }
}

/// Extensions for Ethereum value conversion.
extension RushEtherValueExtensions on BigInt {
  /// Converts Wei to Ether.
  /// Example: `BigInt.from(1000000000000000000).toEther()` returns `1.0`.
  double toEther() => this / BigInt.from(10).pow(18);

  /// Converts Ether to Wei.
  /// Example: `1.toWei()`
  /// returns `BigInt` representation of `1000000000000000000`.
  static BigInt toWei(double ether) => BigInt.from(ether * pow(10, 18));
}

/// Extensions for Ethereum smart contract address display.
extension RushSmartContractExtensions on String {
  /// Shortens a smart contract address for display.
  /// Example: `'0x1234567890123456789012345678901234567890'.shortenAddress()`
  /// returns `'0x123...7890'`.
  String shortenAddress() {
    if (length < 10) return this;
    return '${substring(0, 6)}...${substring(length - 4)}';
  }
}

/// Extensions for hexadecimal string conversion.
extension HexStringExtensions on String {
  /// Converts a hexadecimal string to a byte array.
  /// Example: `'0x1234'.hexToBytes()` returns `[18, 52]`.
  Uint8List hexToBytes() {
    final hexStr = replaceFirst('0x', '');
    final bytes = <int>[];
    for (var i = 0; i < hexStr.length; i += 2) {
      final byteString = hexStr.substring(i, i + 2);
      final byteValue = int.parse(byteString, radix: 16);
      bytes.add(byteValue);
    }
    return Uint8List.fromList(bytes);
  }

  /// Adds a '0x' prefix to a hexadecimal string if it's not already present.
  /// Example: `'1234'.ensure0xPrefix()` returns `'0x1234'`.
  String ensure0xPrefix() => startsWith('0x') ? this : '0x$this';
}

/// Extensions for Async blockchain data fetching.
extension AsyncBlockchainDataExtensions<T> on Future<T> {
  /// Retries the future execution for blockchain data fetching
  /// with a specified number of [retries] in case of failure.
  /// Example usage not provided due to complexity; intended for illustration.
  Future<T> retryOnFailure({int retries = 3}) async {
    try {
      return await this;
    } catch (e) {
      if (retries > 0) {
        return this.retryOnFailure(retries: retries - 1);
      } else {
        rethrow;
      }
    }
  }
}
