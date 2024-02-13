import 'dart:math';

import 'package:flutter/widgets.dart';

/// Extension on [num] to provide utility methods for basic math operations.
extension RushBasicMathOperations on num {
  /// Returns the square of the number.
  /// Example: `4.squared` returns `16`.
  num get squared => this * this;

  /// Returns the cube of the number.
  /// Example: `2.cubed` returns `8`.
  num get cubed => this * this * this;

  /// Converts radians to degrees.
  /// Example: `pi.toDegrees` returns `180.0`.
  num get toDegrees => this * (180 / pi);

  /// Converts degrees to radians.
  /// Example: `180.toRadians` returns `pi`.
  num get toRadians => this * (pi / 180);

  /// Clamps the number to be between [lowerBound] and [upperBound].
  /// Example: `5.clampTo(0, 10)` returns `5`.
  num clampTo(num lowerBound, num upperBound) =>
      min(max(this, lowerBound), upperBound);
}

/// Extension on [num] to provide utility methods for financial operations.
extension RushFinancialOperations on num {
  /// Formats a number into currency format with
  /// specified [symbol] and [decimalCount].
  /// Example: `1234.56.toCurrency(symbol: '€', decimalCount: 2)`
  /// returns `€1234.56`.
  String toCurrency({String symbol = r'$', int decimalCount = 2}) {
    return '$symbol${toStringAsFixed(decimalCount)}';
  }

  /// Returns the percentage of the number from a total.
  /// Example: `50.percentageOf(200)` returns `25.0`.
  num percentageOf(num total) => (this / total) * 100;
}

/// Extension on [num] to provide utility methods for distance.
extension RushDistanceConversions on num {
  /// Converts kilometers to miles.
  /// Example: `10.toMiles` returns approximately `6.21371`.
  num get toMiles => this * 0.621371;

  /// Converts miles to kilometers.
  /// Example: `6.21371.toKilometers` returns approximately `10`.
  num get toKilometers => this / 0.621371;
}

/// Extension on [num] to provide utility methods for temperature.
extension RushTemperatureConversions on num {
  /// Converts Celsius to Fahrenheit.
  /// Example: `0.toFahrenheit` returns `32`.
  num get toFahrenheit => (this * 9 / 5) + 32;

  /// Converts Fahrenheit to Celsius.
  /// Example: `32.toCelsius` returns `0`.
  num get toCelsius => (this - 32) * 5 / 9;
}

/// Extension on [num] to provide utility methods for time.
extension RushTimeExtensions on num {
  /// Converts an integer to a Duration represented in milliseconds.
  /// Example: `100.toMilliseconds` returns a Duration of 100 milliseconds.
  Duration get toMilliseconds => Duration(milliseconds: toInt());

  /// Converts an integer to a Duration represented in microseconds.
  /// Example: `100.toMicroseconds` returns a Duration of 100 microseconds.
  Duration get toMicroseconds => Duration(microseconds: toInt());

  /// Converts an integer to a Duration represented in seconds.
  /// Example: `10.toSeconds` returns a Duration of 10 seconds.
  Duration get toSeconds => Duration(seconds: toInt());

  /// Converts an integer to a Duration represented in minutes.
  /// Example: `5.toMinutes` returns a Duration of 5 minutes.
  Duration get toMinutes => Duration(minutes: toInt());

  /// Converts an integer to a Duration represented in hours.
  /// Example: `2.toHours` returns a Duration of 2 hours.
  /// Example: `2.5.toHours` returns a Duration of 2 hours and 30 minutes.
  Duration get toHours {
    final hours = toInt();
    final minutes = ((this - hours) * 60).toInt();
    return Duration(hours: hours, minutes: minutes);
  }

  /// Converts an integer to a Duration represented in days.
  /// Example: `3.toDays` returns a Duration of 3 days.
  Duration get toDays => Duration(days: toInt());
}

/// Extension on [num] to provide utility methods for numbers.
extension RushMiscellaneousUtilities on num {
  /// Limits the number to a maximum value.
  /// Example: `15.limitToMax(10)` returns `10`.
  num limitToMax(num max) => min(this, max);

  /// Limits the number to a minimum value.
  /// Example: `5.limitToMin(10)` returns `10`.
  num limitToMin(num min) => max(this, min);

  /// Checks if the number is within a specified range.
  /// Example: `5.isInRange(1, 10)` returns `true`.
  bool isInRange(num start, num end) => this >= start && this <= end;

  /// Maps the number from one range to another.
  /// Example: `0.5.map(0, 1, 0, 100)` returns `50`.
  num map(num inMin, num inMax, num outMin, num outMax) {
    return ((this - inMin) * (outMax - outMin) / (inMax - inMin)) + outMin;
  }

  /// Returns an iterable range of integers from 0 to the current number value.
  ///
  /// Example:
  /// ```dart
  /// 5.range; // returns [0, 1, 2, 3, 4]
  /// ```
  Iterable<int> get range => Iterable<int>.generate(toInt());

  /// Returns the current number as a string
  /// with a fixed number of decimal places.
  ///
  /// The [digit] parameter specifies the number of decimal places.
  ///
  /// Example:
  /// ```dart
  /// 3.14159.toDoubleStringAsFixed(digit: 2); // returns "3.14"
  /// ```
  String toDoubleStringAsFixed({int digit = 2}) =>
      toStringAsFixed(truncateToDouble() == this ? 0 : digit);

  /// Returns the current number as a string with a specified length.
  ///
  /// The [length] parameter specifies the total length of the string.
  ///
  /// Example:
  /// ```dart
  /// 3.14159.toDoubleStringAsPrecised(length: 4); // returns "3.141"
  /// ```
  String toDoubleStringAsPrecised({int length = 4}) {
    return ((this * pow(10, length)).truncateToDouble() / pow(10, length))
        .toString();
  }

  /// Generates a list of elements using the provided generator function.
  ///
  /// The [generator] parameter is a function that takes an index
  /// and returns an element.
  /// The [growable] parameter specifies whether the list is growable.
  ///
  /// Example:
  /// ```dart
  /// 5.generate((index) => index * 2); // returns [0, 2, 4, 6, 8]
  /// ```
  List<T> generate<T>(
    T Function(int index) generator, {
    bool growable = true,
  }) =>
      List<T>.generate(
        toInt(),
        (int index) => generator(index),
        growable: growable,
      );

  /// Returns the current number as a formatted file size string.
  ///
  /// Example:
  /// ```dart
  /// 1024.toFileSize(); // returns "1.00 KB"
  /// ```
  String toFileSize() {
    var size = this;
    if (size < 1024) {
      return '${size}B';
    } else if (size >= 1024 && size < pow(1024, 2)) {
      size = (size / 10.24).round();
      return '${size / 100}KB';
    } else if (size >= pow(1024, 2) && size < pow(1024, 3)) {
      size = (size / (pow(1024, 2) * 0.01)).round();
      return '${size / 100}MB';
    } else if (size >= pow(1024, 3) && size < pow(1024, 4)) {
      size = (size / (pow(1024, 3) * 0.01)).round();
      return '${size / 100}GB';
    }
    return size.toString();
  }
}

/// Extension on [num] to provide utility methods for widgets.
extension RushNumWidgetExtension on num {
  /// Returns a SizedBox with the width set to the current number value.
  ///
  /// Example:
  /// ```dart
  /// 10.widthBox;
  /// ```
  Widget get widthBox => SizedBox(
        width: toDouble(),
      );

  /// Returns a SizedBox with the height set to the current number value.
  ///
  /// Example:
  /// ```dart
  ///  10.heightBox;
  /// ```
  Widget get heightBox => SizedBox(
        height: toDouble(),
      );

  /// Returns a SizedBox with both width and height set
  /// to the current number value, creating a square box.
  ///
  /// Example:
  /// ```dart
  /// 10.squareBox;
  /// ```
  Widget get squareBox => SizedBox(
        height: toDouble(),
        width: toDouble(),
      );
}
