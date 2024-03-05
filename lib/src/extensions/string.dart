/*
 * Copyright 2024 Pawan Kumar. All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http:///www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui';

import 'package:rush/src/extensions/list.dart';

///  Extension Methods for the nullable strings
extension RushNullableStringIsEmptyOrNullExtension on String? {
  /// Checks if the string is null or empty.
  ///
  /// Example:
  /// ```dart
  /// String str = '';
  /// print(str.isNullOrEmpty); // true
  /// ```
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// Checks if the string is not null and not empty.
  ///
  /// Example:
  /// ```dart
  /// String str = 'Hello';
  /// print(str.isNotNullOrEmpty); // true
  /// ```
  bool get isNotNullOrEmpty => !isNullOrEmpty;

  /// Checks if the string is null, empty or is made up of whitespaces.
  ///
  /// Example:
  /// ```dart
  /// String str = '   ';
  /// print(str.isNullOrWhiteSpace); // true
  /// ```
  bool get isNullOrWhiteSpace => this == null || this!.trim().isEmpty;
}

/// Extension Methods for the strings
extension RushStringExtension on String {
  /// Checks if the string is a numeric value.
  ///
  /// Example:
  /// ```dart
  /// String str = '123';
  /// print(str.isNumeric); // true
  /// ```
  bool get isNumeric => double.tryParse(this) != null;

  /// Converts the string to an integer.
  ///
  /// Example:
  /// ```dart
  /// String numberString = '42';
  /// int number = numberString.toInt();
  /// print(number); // Output: 42
  /// ```
  int toInt() => int.parse(this);

  /// Converts the string to a double.
  ///
  /// Example:
  /// ```dart
  /// String numberString = '3.14';
  /// double number = numberString.toDouble();
  /// print(number); // Output: 3.14
  /// ```
  double toDouble() => double.parse(this);

  /// Converts the string to a boolean.
  ///
  /// Example:
  /// ```dart
  /// String boolString = 'true';
  /// bool value = boolString.toBool();
  /// print(value); // Output: true
  /// ```
  bool toBool() => toLowerCase() == 'true';

  /// Capitalizes the first letter of the string.
  ///
  /// Example:
  /// ```dart
  /// String text = 'hello';
  /// String capitalizedText = text.capitalize();
  /// print(capitalizedText); // Output: 'Hello'
  /// ```
  String capitalize() => this[0].toUpperCase() + substring(1);

  /// Converts the string to a DateTime object.
  ///
  /// Example:
  /// ```dart
  /// String dateString = '2022-01-01';
  /// DateTime date = dateString.toDateTime();
  /// print(date); // Output: 2022-01-01 00:00:00.000
  /// ```
  DateTime toDateTime() => DateTime.parse(this);

  /// Reverses the string.
  ///
  /// Example:
  /// ```dart
  /// String text = 'Hello, World!';
  /// String reversedText = text.reverse();
  /// print(reversedText); // Output: !dlroW ,olleH
  /// ```
  String reverse() => split('').reversed.join();

  /// Checks if the string is a palindrome.
  ///
  /// Example:
  /// ```dart
  /// String palindrome = 'level';
  /// bool isPalindrome = palindrome.isPalindrome;
  /// print(isPalindrome); // Output: true
  /// ```
  bool get isPalindrome => this == reverse();

  /// Removes all whitespace in the string.
  ///
  /// Example:
  /// ```dart
  /// String textWithWhitespace = 'Hello, World!';
  /// String textWithoutWhitespace = textWithWhitespace.removeAllWhitespace();
  /// print(textWithoutWhitespace); // Output: Hello,World!
  /// ```
  String removeAllWhitespace() => replaceAll(RegExp(r'\s'), '');

  /// Checks if the string is an email.
  ///
  /// Returns `true` if the string matches the email pattern, otherwise `false`.
  ///
  /// Example:
  /// ```dart
  /// String email = 'example@example.com';
  /// bool isEmail = email.isEmail; // true
  /// ```
  bool get isEmail =>
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(this);

  /// Checks if the string is a URL.
  ///
  /// Returns `true` if the string is a valid URL, otherwise `false`.
  ///
  /// Example:
  /// ```dart
  /// String url = 'https://www.example.com';
  /// bool isUrl = url.isUrl; // true
  /// ```
  bool get isUrl => Uri.parse(this).isAbsolute;

  /// Converts the string to a list of words.
  ///
  /// Returns a list of words extracted from the string.
  ///
  /// Example:
  /// ```dart
  /// String sentence = 'Hello world';
  /// List<String> words = sentence.toWords(); // ['Hello', 'world']
  /// ```
  List<String> toWords() => split(RegExp(r'\s+'));

  /// Counts the number of words in the string.
  ///
  /// Returns the number of words in the string.
  ///
  /// Example:
  /// ```dart
  /// String sentence = 'Hello world';
  /// int wordCount = sentence.wordCount; // 2
  /// ```
  int get wordCount => toWords().length;

  /// Converts the string to a list of lines.
  ///
  /// Returns a list of lines extracted from the string.
  ///
  /// Example:
  /// ```dart
  /// String text = 'Line 1\nLine 2\nLine 3';
  /// List<String> lines = text.toLines(); // ['Line 1', 'Line 2', 'Line 3']
  /// ```
  List<String> toLines() => split(RegExp(r'\n'));

  /// Counts the number of lines in the string.
  ///
  /// Returns the number of lines in the string.
  ///
  /// Example:
  /// ```dart
  /// String text = 'Line 1\nLine 2\nLine 3';
  /// int lineCount = text.lineCount; // 3
  /// ```
  int get lineCount => toLines().length;

  /// Converts the string to a list of characters.
  ///
  /// Returns a list of characters extracted from the string.
  ///
  /// Example:
  /// ```dart
  /// String word = 'Hello';
  /// List<String> characters = word.toCharacters(); // ['H', 'e', 'l', 'l', 'o']
  /// ```
  List<String> toCharacters() => split('');

  /// Counts the number of characters in the string.
  ///
  /// Example:
  /// ```dart
  /// final str = 'Hello, World!';
  /// final count = str.characterCount; // 13
  /// ```
  int get characterCount => toCharacters().length;

  /// Converts the string to camel case.
  ///
  /// Example:
  /// ```dart
  /// final str = 'hello world';
  /// final camelCase = str.toCamelCase(); // helloWorld
  /// ```
  String toCamelCase() => toLowerCase()
      .split(' ')
      .mapIndexed(
        (index, s) => index == 0 ? s : s.capitalize(),
      )
      .join();

  /// Converts the string to snake case.
  ///
  /// Example:
  /// ```dart
  /// final str = 'helloWorld';
  /// final snakeCase = str.toSnakeCase(); // hello_world
  /// ```
  String toSnakeCase() {
    return split(RegExp('(?<=[a-z])(?<!_)(?=[A-Z])')).join('_').toLowerCase();
  }

  /// Converts the string to kebab case.
  ///
  /// Example:
  /// ```dart
  /// final str = 'helloWorld';
  /// final kebabCase = str.toKebabCase(); // hello-world
  /// ```
  String toKebabCase() => toSnakeCase().replaceAll('_', '-');

  /// Converts the string to a list of sentences.
  ///
  /// Example:
  /// ```dart
  /// final str = 'Hello. World! How are you?';
  /// final sentences = str.toSentences(); // ['Hello.', 'World!', 'How are you?']
  /// ```
  List<String> toSentences() => split(RegExp(r'(?<=[.!?])\s+'));

  /// Counts the number of sentences in the string.
  ///
  /// Example:
  /// ```dart
  /// final str = 'Hello. World! How are you?';
  /// final count = str.sentenceCount; // 3
  /// ```
  int get sentenceCount => toSentences().length;

  /// Checks if the string is a valid JSON.
  ///
  /// Example:
  /// ```dart
  /// final str = '{"name": "John", "age": 30}';
  /// final isValid = str.isValidJson; // true
  /// ```
  bool get isValidJson {
    try {
      jsonDecode(this);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Converts the string to a JSON object.
  ///
  /// Example:
  /// ```dart
  /// final str = '{"name": "John", "age": 30}';
  /// final json = str.toJson(); // {'name': 'John', 'age': 30}
  /// ```
  dynamic toJson() => jsonDecode(this);

  /// Converts the string to a base64 string.
  ///
  /// Example:
  /// ```dart
  /// final str = 'Hello, World!';
  /// final base64Str = str.toBase64(); // SGVsbG8sIFdvcmxkIQ==
  /// ```
  String toBase64() => base64Encode(utf8.encode(this));

  /// Decodes the base64 string to a string.
  ///
  /// Example:
  /// ```dart
  /// final base64Str = 'SGVsbG8sIFdvcmxkIQ==';
  /// final str = base64Str.decodeBase64(); // Hello, World!
  /// ```
  String decodeBase64() => utf8.decode(base64Decode(this));

  /// Checks if the string is a base64 string.
  ///
  /// Example:
  /// ```dart
  /// final str = 'SGVsbG8sIFdvcmxkIQ==';
  /// final isBase64 = str.isBase64; // true
  /// ```
  bool get isBase64 {
    try {
      base64Decode(this);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Converts the string to a byte array.
  ///
  /// Example:
  /// ```dart
  /// final str = 'Hello, World!';
  /// final bytes = str.toBytes(); // [72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33]
  /// ```
  Uint8List toBytes() => utf8.encode(this);

  /// Checks if the string is a binary string.
  ///
  /// Example:
  /// ```dart
  /// final str = '101010';
  /// final isBinary = str.isBinary; // true
  /// ```
  bool get isBinary => RegExp(r'^[01]+$').hasMatch(this);

  /// Converts the binary string to an integer.
  ///
  /// Example:
  /// ```dart
  /// final str = '101010';
  /// final intValue = str.binaryToInt(); // 42
  /// ```
  int binaryToInt() => int.parse(this, radix: 2);

  /// Checks if the string is a hexadecimal string.
  ///
  /// Example:
  /// ```dart
  /// final str = '1A2B3C';
  /// final isHexadecimal = str.isHexadecimal; // true
  /// ```
  bool get isHexadecimal => RegExp(r'^[0-9a-fA-F]+$').hasMatch(this);

  /// Converts the hexadecimal string to an integer.
  ///
  /// Example:
  /// ```dart
  /// final str = '1A2B3C';
  /// final intValue = str.hexadecimalToInt(); // 17012028
  /// ```
  int? hexToDecimal() => int.tryParse(this, radix: 16);

  /// Checks if the string is a valid IPv4 address.
  ///
  /// Example:
  /// ```dart
  /// String ipAddress = '192.168.0.1';
  /// bool isValidIPv4 = ipAddress.isIPv4; // true
  /// ```
  bool get isIPv4 =>
      RegExp(r'^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$').hasMatch(this);

  /// Checks if the string is a valid IPv6 address.
  ///
  /// Example:
  /// ```dart
  /// String ipAddress = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';
  /// bool isValidIPv6 = ipAddress.isIPv6; // true
  /// ```
  bool get isIPv6 =>
      RegExp(r'^([0-9a-fA-F]{0,4}:){7}[0-9a-fA-F]{0,4}$').hasMatch(this);

  /// Checks if the string is a valid MAC address.
  ///
  /// Example:
  /// ```dart
  /// String macAddress = '00:1B:44:11:3A:B7';
  /// bool isValidMacAddress = macAddress.isMacAddress; // true
  /// ```
  bool get isMacAddress =>
      RegExp(r'^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$').hasMatch(this);

  /// Checks if the string is a valid credit card number.
  ///
  /// Example:
  /// ```dart
  /// String creditCardNumber = '4111-1111-1111-1111';
  /// bool isValidCreditCard = creditCardNumber.isCreditCard; // true
  /// ```
  bool get isCreditCard =>
      RegExp(r'^\d{4}[-\s]?\d{4}[-\s]?\d{4}[-\s]?\d{4}$').hasMatch(this);

  /// Checks if the string is a valid ISBN-10 or ISBN-13.
  ///
  /// Example:
  /// ```dart
  /// String isbn = '978-3-16-148410-0';
  /// bool isValidISBN = isbn.isISBN; // true
  /// ```
  bool get isISBN => RegExp(
        r'^(?:ISBN(?:-1[03])?:? )?(?=[-0-9 ]{17}$|[-0-9X ]{13}$)'
        r'(?:97[89][-\s]?)?[0-9]{1,5}[-\s]?[0-9]+[-\s]?[0-9]+[-\s]?[0-9X]$',
      ).hasMatch(this);

  /// Checks if the string is a valid date string.
  ///
  /// Example:
  /// ```dart
  /// String dateString = '2022-01-01';
  /// bool isValidDate = dateString.isDate; // true
  /// ```
  bool get isDate {
    final dateRegex = RegExp(r'^\d{4}-(0[1-9]|1[0-2])-([0-2][1-9]|3[01])$');
    if (!dateRegex.hasMatch(this)) {
      return false;
    }
    try {
      DateTime.parse(this);
      return true;
    } catch (_) {
      return false;
    }
  }

  /// Converts the string to a list of paragraphs.
  ///
  /// Example:
  /// ```dart
  /// String text = 'This is paragraph 1.\n\nThis is paragraph 2.';
  /// List<String> paragraphs = text.toParagraphs();
  /// print(paragraphs); // ['This is paragraph 1.', 'This is paragraph 2.']
  /// ```
  List<String> toParagraphs() => split(RegExp(r'(?<=\n)\s*(?=\S)'))
      .map((paragraph) => paragraph.trim())
      .toList();

  /// Counts the number of paragraphs in the string.
  ///
  /// Example:
  /// ```dart
  /// String text = 'This is paragraph 1.\n\nThis is paragraph 2.';
  /// int count = text.paragraphCount;
  /// print(count); // 2
  /// ```
  int get paragraphCount => toParagraphs().length;

  /// Converts the string to a list of unique words.
  ///
  /// Example:
  /// ```dart
  /// String text = "Hello world! Hello world!";
  /// List<String> uniqueWords = text.toUniqueWords();
  /// print(uniqueWords); // Output: [Hello, world!]
  /// ```
  List<String> toUniqueWords() => toWords().toSet().toList();

  /// Counts the number of unique words in the string.
  ///
  /// Example:
  /// ```dart
  /// String text = "Hello world! Hello world!";
  /// int count = text.uniqueWordCount;
  /// print(count); // Output: 2
  /// ```
  int get uniqueWordCount => toUniqueWords().length;

  /// Checks if the string is a valid phone number.
  ///
  /// Example:
  /// ```dart
  /// final phoneNumber = '+1234567890';
  /// print(phoneNumber.isPhoneNumber); // true
  /// ```
  bool get isPhoneNumber => RegExp(
        r'^\+(?:[0-9] ?){6,14}[0-9]$',
      ).hasMatch(this);

  /// Checks if the string is a valid postal code.
  ///
  /// Example:
  /// ```dart
  /// final postalCode = '12345';
  /// print(postalCode.isPostalCode); // true
  /// ```
  bool get isPostalCode => RegExp(r'^\d{5}(-\d{4})?$').hasMatch(this);

  /// Checks if the string is a valid SSN.
  ///
  /// Example:
  /// ```dart
  /// final ssn = '123-45-6789';
  /// print(ssn.isSSN); // true
  /// ```
  bool get isSSN => RegExp(r'^\d{3}-\d{2}-\d{4}$').hasMatch(this);

  /// Checks if the string is a valid password.
  ///
  /// A valid password must have at least 8 characters,
  /// at least one uppercase letter,
  /// one lowercase letter, one number, and one special character.
  ///
  /// Example:
  /// ```dart
  /// final password = 'Password123!';
  /// print(password.isValidPassword); // true
  /// ```
  bool get isValidPassword => RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
      ).hasMatch(this);

  /// Checks if the string is a valid username.
  ///
  /// A valid username can only contain alphanumeric characters,
  /// underscore, and hyphen,
  /// and must be between 3 and 16 characters long.
  ///
  /// Example:
  /// ```dart
  /// final username = 'john_doe';
  /// print(username.isValidUsername); // true
  /// ```
  bool get isValidUsername => RegExp(r'^[a-zA-Z0-9_-]{3,16}$').hasMatch(this);

  /// Checks if the string is a valid hex color.
  ///
  /// Example:
  /// ```dart
  /// final hexColor = '#FF0000';
  /// print(hexColor.isHexColor); // true
  /// ```
  bool get isHexColor =>
      RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$').hasMatch(this);

  /// Converts the string to a color.
  ///
  /// Example:
  /// ```dart
  /// final hexColor = '#FF0000';
  /// final color = hexColor.toColor();
  /// print(color); // Color(0xFFFF0000)
  /// ```
  Color toColor() =>
      Color(int.parse(replaceFirst('#', ''), radix: 16) + 0xFF000000);

  /// Checks if the string is a valid HTML tag.
  ///
  /// Example:
  /// ```dart
  /// final htmlTag = '<div>Hello World</div>';
  /// print(htmlTag.isHtmlTag); // true
  /// ```
  bool get isHtmlTag =>
      RegExp(r'^<([a-z]+)([^<]+)*(?:>(.*)<\/\1>|\s+\/>)$').hasMatch(this);

  /// Strips HTML tags from the string.
  ///
  /// Example:
  /// ```dart
  /// final htmlString = '<p>Hello <b>World</b></p>';
  /// final strippedString = htmlString.stripHtmlTags();
  /// print(strippedString); // 'Hello World'
  /// ```
  String stripHtmlTags() => replaceAll(RegExp('<[^>]*>'), '');

  ///
  /// Replaces chars of the given String [String] with [replace].
  ///
  /// The default value of [replace] is *.
  /// [begin] determines the start of the 'replacing'. If [begin] is null,
  /// it starts from index 0.
  /// [end] defines the end of the 'replacing'. If [end] is null,
  /// it ends at [String] length divided by 2.
  /// If [String] is empty or consists of only 1 char, the method returns null.
  ///
  /// Example :
  /// 1234567890 => *****67890
  /// 1234567890 with begin 2 and end 6 => 12****7890
  /// 1234567890 with begin 1 => 1****67890
  ///
  String? hidePartial({int begin = 0, int? end, String replace = '*'}) {
    final buffer = StringBuffer();
    if (length <= 1) {
      return null;
    }
    if (end == null) {
      end = (length / 2).round();
    } else {
      if (end > length) {
        // ignore: parameter_assignments
        end = length;
      }
    }
    for (var i = 0; i < length; i++) {
      if (i >= end) {
        buffer.write(String.fromCharCode(runes.elementAt(i)));
        continue;
      }
      if (i >= begin) {
        buffer.write(replace);
        continue;
      }
      buffer.write(String.fromCharCode(runes.elementAt(i)));
    }
    return buffer.toString();
  }
}
