// ignore_for_file: lines_longer_than_80_chars

import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:rush/src/extensions/string.dart';

void main() {
  group('RushStringExtension', () {
    test('isNullOrEmpty should return true for an empty string', () {
      expect(''.isNullOrEmpty, isTrue);
    });

    test('isNullOrEmpty should return false for a non-empty string', () {
      expect('Hello'.isNullOrEmpty, isFalse);
    });

    test('isNotNullOrEmpty should return false for an empty string', () {
      expect(''.isNotNullOrEmpty, isFalse);
    });

    test('isNotNullOrEmpty should return true for a non-empty string', () {
      expect('Hello'.isNotNullOrEmpty, isTrue);
    });

    test(
        'isNullOrWhiteSpace should return true for a string with only whitespace',
        () {
      expect('   '.isNullOrWhiteSpace, isTrue);
    });

    test('isNullOrWhiteSpace should return false for a non-empty string', () {
      expect('Hello'.isNullOrWhiteSpace, isFalse);
    });

    test('isNumeric should return true for a numeric string', () {
      expect('123'.isNumeric, isTrue);
    });

    test('isNumeric should return false for a non-numeric string', () {
      expect('Hello'.isNumeric, isFalse);
    });

    test('toInt() should convert the string to an integer', () {
      // Arrange
      const numberString = '42';

      // Act
      final result = numberString.toInt();

      // Assert
      expect(result, 42);
    });

    test('toDouble() should convert the string to a double', () {
      // Arrange
      const numberString = '3.14';

      // Act
      final result = numberString.toDouble();

      // Assert
      expect(result, 3.14);
    });

    test('toBool() should convert the string to a boolean', () {
      // Arrange
      const trueString = 'true';
      const falseString = 'false';

      // Act
      final trueResult = trueString.toBool();
      final falseResult = falseString.toBool();

      // Assert
      expect(trueResult, true);
      expect(falseResult, false);
    });

    test('capitalize should capitalize the first letter of the string', () {
      const text = 'hello';
      final capitalizedText = text.capitalize();
      expect(capitalizedText, 'Hello');
    });

    test('toDateTime should convert the string to a DateTime object', () {
      const dateString = '2022-01-01';
      final date = dateString.toDateTime();
      expect(date, DateTime.parse(dateString));
    });

    test('reverse should reverse the string', () {
      const text = 'Hello, World!';
      final reversedText = text.reverse();
      expect(reversedText, '!dlroW ,olleH');
    });

    test('isPalindrome should check if the string is a palindrome', () {
      const palindrome = 'level';
      final isPalindrome = palindrome.isPalindrome;
      expect(isPalindrome, true);
    });

    test('removeAllWhitespace should remove all whitespace in the string', () {
      const textWithWhitespace = 'Hello, World!';
      final textWithoutWhitespace = textWithWhitespace.removeAllWhitespace();
      expect(textWithoutWhitespace, 'Hello,World!');
    });

    test('isEmail should check if the string is an email', () {
      const email = 'example@example.com';
      final isEmail = email.isEmail;
      expect(isEmail, true);
    });

    test('isUrl should check if the string is a URL', () {
      const url = 'https://www.example.com';
      final isUrl = url.isUrl;
      expect(isUrl, true);
    });

    test('toWords should convert the string to a list of words', () {
      const sentence = 'Hello world';
      final words = sentence.toWords();
      expect(words, ['Hello', 'world']);
    });

    test('wordCount should count the number of words in the string', () {
      const sentence = 'Hello world';
      final wordCount = sentence.wordCount;
      expect(wordCount, 2);
    });

    test('toLines should convert the string to a list of lines', () {
      const text = 'Line 1\nLine 2\nLine 3';
      final lines = text.toLines();
      expect(lines, ['Line 1', 'Line 2', 'Line 3']);
    });

    test('lineCount should count the number of lines in the string', () {
      const text = 'Line 1\nLine 2\nLine 3';
      final lineCount = text.lineCount;
      expect(lineCount, 3);
    });

    test('toCharacters should convert the string to a list of characters', () {
      const word = 'Hello';
      final characters = word.toCharacters();
      expect(characters, ['H', 'e', 'l', 'l', 'o']);
    });

    test('characterCount should count the number of characters in the string',
        () {
      const str = 'Hello, World!';
      final count = str.characterCount;
      expect(count, 13);
    });

    test('toCamelCase should convert the string to camel case', () {
      const str = 'hello world';
      final camelCase = str.toCamelCase();
      expect(camelCase, 'helloWorld');
    });

    test('toSnakeCase should convert the string to snake case', () {
      const str = 'helloWorld';
      final snakeCase = str.toSnakeCase();
      expect(snakeCase, 'hello_world');
    });

    test('toKebabCase should convert the string to kebab case', () {
      const str = 'helloWorld';
      final kebabCase = str.toKebabCase();
      expect(kebabCase, 'hello-world');
    });

    test('toSentences should convert the string to a list of sentences', () {
      const str = 'Hello. World! How are you?';
      final sentences = str.toSentences();
      expect(sentences, ['Hello.', 'World!', 'How are you?']);
    });

    test('sentenceCount should count the number of sentences in the string',
        () {
      const str = 'Hello. World! How are you?';
      final count = str.sentenceCount;
      expect(count, 3);
    });
    test('isValidJson should return true for a valid JSON string', () {
      // Arrange
      const jsonString = '{"name": "John", "age": 30}';

      // Act
      final isValid = jsonString.isValidJson;

      // Assert
      expect(isValid, isTrue);
    });

    test('isValidJson should return false for an invalid JSON string', () {
      // Arrange
      const jsonString = '{"name": "John", "age": 30';

      // Act
      final isValid = jsonString.isValidJson;

      // Assert
      expect(isValid, isFalse);
    });

    test('toJson should convert the string to a JSON object', () {
      // Arrange
      const jsonString = '{"name": "John", "age": 30}';

      // Act
      final json = jsonString.toJson();

      // Assert
      expect(json, {'name': 'John', 'age': 30});
    });

    test('toBase64 should convert the string to a base64 string', () {
      // Arrange
      const str = 'Hello, World!';

      // Act
      final base64Str = str.toBase64();

      // Assert
      expect(base64Str, 'SGVsbG8sIFdvcmxkIQ==');
    });

    test('decodeBase64 should decode the base64 string to a string', () {
      // Arrange
      const base64Str = 'SGVsbG8sIFdvcmxkIQ==';

      // Act
      final str = base64Str.decodeBase64();

      // Assert
      expect(str, 'Hello, World!');
    });

    test('isBase64 should return true for a valid base64 string', () {
      // Arrange
      const base64Str = 'SGVsbG8sIFdvcmxkIQ==';

      // Act
      final isBase64 = base64Str.isBase64;

      // Assert
      expect(isBase64, isTrue);
    });

    test('isBase64 should return false for an invalid base64 string', () {
      // Arrange
      const base64Str = 'SGVsbG8sIFdvcmxkIQ=';

      // Act
      final isBase64 = base64Str.isBase64;

      // Assert
      expect(isBase64, isFalse);
    });

    test('toBytes should convert the string to a byte array', () {
      // Arrange
      const str = 'Hello, World!';

      // Act
      final bytes = str.toBytes();

      // Assert
      expect(
        bytes,
        [72, 101, 108, 108, 111, 44, 32, 87, 111, 114, 108, 100, 33],
      );
    });

    test('isBinary should return true for a valid binary string', () {
      // Arrange
      const binaryStr = '101010';

      // Act
      final isBinary = binaryStr.isBinary;

      // Assert
      expect(isBinary, isTrue);
    });

    test('isBinary should return false for an invalid binary string', () {
      // Arrange
      const binaryStr = '10102';

      // Act
      final isBinary = binaryStr.isBinary;

      // Assert
      expect(isBinary, isFalse);
    });

    test('binaryToInt should convert the binary string to an integer', () {
      // Arrange
      const binaryStr = '101010';

      // Act
      final intValue = binaryStr.binaryToInt();

      // Assert
      expect(intValue, 42);
    });

    test('isHexadecimal should return true for a valid hexadecimal string', () {
      // Arrange
      const hexadecimalStr = '1A2B3C';

      // Act
      final isHexadecimal = hexadecimalStr.isHexadecimal;

      // Assert
      expect(isHexadecimal, isTrue);
    });

    test('isHexadecimal should return false for an invalid hexadecimal string',
        () {
      // Arrange
      const hexadecimalStr = '1A2B3G';

      // Act
      final isHexadecimal = hexadecimalStr.isHexadecimal;

      // Assert
      expect(isHexadecimal, isFalse);
    });

    test('hexadecimalToInt should convert the hexadecimal string to an integer',
        () {
      // Arrange
      const hexadecimalStr = '1A2B3C';

      // Act
      final intValue = hexadecimalStr.hexToDecimal();

      // Assert
      expect(intValue, 1715004);
    });

    test('isIPv4 should return true for a valid IPv4 address', () {
      // Arrange
      const ipAddress = '192.168.0.1';

      // Act
      final isValidIPv4 = ipAddress.isIPv4;

      // Assert
      expect(isValidIPv4, isTrue);
    });

    test('isIPv4 should return false for an invalid IPv4 address', () {
      // Arrange
      const ipAddress = '192.168.0';

      // Act
      final isValidIPv4 = ipAddress.isIPv4;

      // Assert
      expect(isValidIPv4, isFalse);
    });

    test('isIPv6 should return true for a valid IPv6 address', () {
      // Arrange
      const ipAddress = '2001:0db8:85a3:0000:0000:8a2e:0370:7334';

      // Act
      final isValidIPv6 = ipAddress.isIPv6;

      // Assert
      expect(isValidIPv6, isTrue);
    });

    test('isIPv6 should return false for an invalid IPv6 address', () {
      // Arrange
      const ipAddress = '2001:0db8:85a3:0000:0000:8a2e:0370';

      // Act
      final isValidIPv6 = ipAddress.isIPv6;

      // Assert
      expect(isValidIPv6, isFalse);
    });

    test('isMacAddress should return true for a valid MAC address', () {
      // Arrange
      const macAddress = '00:1B:44:11:3A:B7';

      // Act
      final isValidMacAddress = macAddress.isMacAddress;

      // Assert
      expect(isValidMacAddress, isTrue);
    });

    test('isMacAddress should return false for an invalid MAC address', () {
      // Arrange
      const macAddress = '00:1B:44:11:3A';

      // Act
      final isValidMacAddress = macAddress.isMacAddress;

      // Assert
      expect(isValidMacAddress, isFalse);
    });

    test('isCreditCard should return true for a valid credit card number', () {
      // Arrange
      const creditCardNumber = '4111-1111-1111-1111';

      // Act
      final isValidCreditCard = creditCardNumber.isCreditCard;

      // Assert
      expect(isValidCreditCard, isTrue);
    });

    test('isCreditCard should return false for an invalid credit card number',
        () {
      // Arrange
      const creditCardNumber = '4111-1111-1111-111';

      // Act
      final isValidCreditCard = creditCardNumber.isCreditCard;

      // Assert
      expect(isValidCreditCard, isFalse);
    });

    test('isISBN should return true for a valid ISBN-10 or ISBN-13', () {
      // Arrange
      const isbn = '978-3-16-148410-0';

      // Act
      final isValidISBN = isbn.isISBN;

      // Assert
      expect(isValidISBN, isTrue);
    });

    test('isISBN should return false for an invalid ISBN-10 or ISBN-13', () {
      // Arrange
      const isbn = '978-3-16-148410-';

      // Act
      final isValidISBN = isbn.isISBN;

      // Assert
      expect(isValidISBN, isFalse);
    });

    test('isDate should return true for a valid date string', () {
      // Arrange
      const dateString = '2022-01-01';

      // Act
      final isValidDate = dateString.isDate;

      // Assert
      expect(isValidDate, isTrue);
    });

    test('isDate should return false for an invalid date string', () {
      // Arrange
      const dateString = '2022-01-32';

      // Act
      final isValidDate = dateString.isDate;

      // Assert
      expect(isValidDate, isFalse);
    });

    // Existing tests...

    test('toParagraphs should convert the string to a list of paragraphs', () {
      // Arrange
      const text = 'This is paragraph 1.\n\nThis is paragraph 2.';

      // Act
      final paragraphs = text.toParagraphs();

      // Assert
      expect(paragraphs, ['This is paragraph 1.', 'This is paragraph 2.']);
    });

    test('paragraphCount should count the number of paragraphs in the string',
        () {
      // Arrange
      const text = 'This is paragraph 1.\n\nThis is paragraph 2.';

      // Act
      final count = text.paragraphCount;

      // Assert
      expect(count, 2);
    });

    test('toUniqueWords should convert the string to a list of unique words',
        () {
      // Arrange
      const text = 'Hello world! Hello world!';

      // Act
      final uniqueWords = text.toUniqueWords();

      // Assert
      expect(uniqueWords, ['Hello', 'world!']);
    });

    test(
        'uniqueWordCount should count the number of unique words in the string',
        () {
      // Arrange
      const text = 'Hello world! Hello world!';

      // Act
      final count = text.uniqueWordCount;

      // Assert
      expect(count, 2);
    });

    test('isPhoneNumber should return true for a valid phone number', () {
      // Arrange
      const phoneNumber = '+1234567890';

      // Act
      final isPhoneNumber = phoneNumber.isPhoneNumber;

      // Assert
      expect(isPhoneNumber, isTrue);
    });

    test('isPhoneNumber should return false for an invalid phone number', () {
      // Arrange
      const phoneNumber = '123456789';

      // Act
      final isPhoneNumber = phoneNumber.isPhoneNumber;

      // Assert
      expect(isPhoneNumber, isFalse);
    });

    test('isPostalCode should return true for a valid postal code', () {
      // Arrange
      const postalCode = '12345';

      // Act
      final isPostalCode = postalCode.isPostalCode;

      // Assert
      expect(isPostalCode, isTrue);
    });

    test('isPostalCode should return false for an invalid postal code', () {
      // Arrange
      const postalCode = '1234';

      // Act
      final isPostalCode = postalCode.isPostalCode;

      // Assert
      expect(isPostalCode, isFalse);
    });

    test('isSSN should return true for a valid SSN', () {
      // Arrange
      const ssn = '123-45-6789';

      // Act
      final isSSN = ssn.isSSN;

      // Assert
      expect(isSSN, isTrue);
    });

    test('isSSN should return false for an invalid SSN', () {
      // Arrange
      const ssn = '123-45-678';

      // Act
      final isSSN = ssn.isSSN;

      // Assert
      expect(isSSN, isFalse);
    });

    test('isValidPassword should return true for a valid password', () {
      // Arrange
      const password = 'Password123!';

      // Act
      final isValidPassword = password.isValidPassword;

      // Assert
      expect(isValidPassword, isTrue);
    });

    test('isValidPassword should return false for an invalid password', () {
      // Arrange
      const password = 'password';

      // Act
      final isValidPassword = password.isValidPassword;

      // Assert
      expect(isValidPassword, isFalse);
    });

    test('isValidUsername should return true for a valid username', () {
      // Arrange
      const username = 'john_doe';

      // Act
      final isValidUsername = username.isValidUsername;

      // Assert
      expect(isValidUsername, isTrue);
    });

    test('isValidUsername should return false for an invalid username', () {
      // Arrange
      const username = 'john.doe';

      // Act
      final isValidUsername = username.isValidUsername;

      // Assert
      expect(isValidUsername, isFalse);
    });
    test('isHexColor should return true for a valid hex color', () {
      // Arrange
      const hexColor = '#FF0000';

      // Act
      final isHexColor = hexColor.isHexColor;

      // Assert
      expect(isHexColor, isTrue);
    });

    test('isHexColor should return false for an invalid hex color', () {
      // Arrange
      const hexColor = '#ZZZZZZ';

      // Act
      final isHexColor = hexColor.isHexColor;

      // Assert
      expect(isHexColor, isFalse);
    });

    test('toColor should convert the hex color string to a Color object', () {
      // Arrange
      const hexColor = '#FF0000';

      // Act
      final color = hexColor.toColor();

      // Assert
      expect(color, const Color(0xFFFF0000));
    });

    test('isHtmlTag should return true for a valid HTML tag', () {
      // Arrange
      const htmlTag = '<div>Hello World</div>';

      // Act
      final isHtmlTag = htmlTag.isHtmlTag;

      // Assert
      expect(isHtmlTag, isTrue);
    });

    test('isHtmlTag should return false for an invalid HTML tag', () {
      // Arrange
      const htmlTag = '<div>Hello World';

      // Act
      final isHtmlTag = htmlTag.isHtmlTag;

      // Assert
      expect(isHtmlTag, isFalse);
    });

    test('stripHtmlTags should remove HTML tags from the string', () {
      // Arrange
      const htmlString = '<p>Hello <b>World</b></p>';

      // Act
      final strippedString = htmlString.stripHtmlTags();

      // Assert
      expect(strippedString, 'Hello World');
    });

    test('hidePartial should replace characters in the string with asterisks',
        () {
      // Arrange
      const text = '1234567890';

      // Act
      final hiddenText = text.hidePartial();

      // Assert
      expect(hiddenText, '*****67890');
    });

    test(
        'hidePartial should replace characters in the specified range with asterisks',
        () {
      // Arrange
      const text = '1234567890';

      // Act
      final hiddenText = text.hidePartial(begin: 2, end: 6);

      // Assert
      expect(hiddenText, '12****7890');
    });

    test(
        'hidePartial should replace characters starting from the specified index with asterisks',
        () {
      // Arrange
      const text = '1234567890';

      // Act
      final hiddenText = text.hidePartial(begin: 1);

      // Assert
      expect(hiddenText, '1****67890');
    });

    test('hidePartial should return null if the string is empty', () {
      // Arrange
      const text = '';

      // Act
      final hiddenText = text.hidePartial();

      // Assert
      expect(hiddenText, isNull);
    });

    test(
        'hidePartial should return null if the string consists of only one character',
        () {
      // Arrange
      const text = '1';

      // Act
      final hiddenText = text.hidePartial();

      // Assert
      expect(hiddenText, isNull);
    });
  });
}
