/// Extension methods for the List class.
extension ListExtensions<T> on List<T> {
  /// Applies the provided function to each element of the list
  /// along with its index.
  ///
  /// Example:
  /// ```dart
  /// final list = [1, 2, 3];
  /// final result = list.mapIndexed((index, value) => index + value);
  /// print(result); // Output: [1, 3, 5]
  /// ```
  Iterable<R> mapIndexed<R>(R Function(int index, T value) f) {
    var index = 0;
    return map((value) => f(index++, value));
  }
}
