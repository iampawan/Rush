import 'dart:math';

/// Extensions for iterables.
extension RushBasicIterableExtensions<T> on Iterable<T> {
  /// Returns the first element, or null if the iterable is empty.
  /// Example: `[].firstOrNull()` returns `null`.
  ///          `[1, 2, 3].firstOrNull()` returns `1`.
  T? firstOrNull() => isEmpty ? null : first;

  /// Returns the last element, or null if the iterable is empty.
  /// Example: `[].lastOrNull()` returns `null`.
  ///          `[1, 2, 3].lastOrNull()` returns `3`.
  T? lastOrNull() => isEmpty ? null : last;

  /// Returns a random element from the iterable, or null
  /// if the iterable is empty.
  /// Example: `[].randomElement()` returns `null`.
  ///          `[1, 2, 3].randomElement()` returns one of the elements randomly.
  T? randomElement() => isEmpty ? null : elementAt(Random().nextInt(length));

  /// Splits the iterable into chunks of the specified [size].
  /// Example: `[1, 2, 3, 4, 5].chunks(2)` returns `[[1, 2], [3, 4], [5]]`.
  Iterable<List<T>> chunks(int size) sync* {
    var chunk = <T>[];
    for (final element in this) {
      chunk.add(element);
      if (chunk.length == size) {
        yield chunk;
        chunk = [];
      }
    }
    if (chunk.isNotEmpty) yield chunk;
  }

  /// Filters the elements of the iterable based on their type.
  /// Example: `[1, 'two', 3, 'four'].whereType<String>()`
  /// returns `['two', 'four']`.
  Iterable<E> whereType<E>() => where((element) => element is E).cast<E>();

  /// Returns true if all elements satisfy the condition.
  /// Example: `[1, 2, 3].all((e) => e < 5)` returns `true`.
  ///          `[1, 2, 3].all((e) => e < 2)` returns `false`.
  bool all(bool Function(T) test) => every(test);

  /// Returns true if any element satisfies the condition.
  /// Example: `[1, 2, 3].any((e) => e < 2)` returns `true`.
  ///          `[1, 2, 3].any((e) => e < 0)` returns `false`.
  bool any(bool Function(T) test) => where(test).isNotEmpty;

  /// Returns the distinct elements from the iterable,
  /// optionally by comparing the keys returned by [keySelector].
  /// Example: `[1, 2, 2, 3, 4, 4].distinct()` returns `[1, 2, 3, 4]`.
  ///          `[{'id': 1}, {'id': 1}, {'id': 2}].distinct((e) => e['id'])`
  /// returns `[{id: 1}, {id: 2}]`.
  Iterable<T> distinct([dynamic Function(T)? keySelector]) {
    final seenKeys = <dynamic>{};
    if (keySelector == null) {
      return where(seenKeys.add);
    } else {
      return where((element) => seenKeys.add(keySelector(element)));
    }
  }
}

/// Extensions for advanced iterables
extension RushAdvancedIterableExtensions<T> on Iterable<T> {
  /// Returns the sum of all elements.
  /// Requires the generic type `T` to be a subtype of `num`.
  /// Example: `[1, 2, 3].sum()` returns `6`.
  num sum() => fold(0, (previous, element) => previous + (element as num));

  /// Returns the average of all elements.
  /// Requires the generic type `T` to be a subtype of `num`.
  /// Example: `[2, 4, 6, 8].average()` returns `5`.
  double average() => isEmpty ? 0 : sum() / length;

  /// Computes the median of the elements.
  /// Requires the generic type `T` to be a subtype of `num`
  /// and the iterable to be non-empty.
  /// Example: `[7, 3, 5].median()` returns `5`.
  double median() {
    if (isEmpty) {
      throw StateError('Cannot compute median of an empty iterable.');
    }
    final sorted = toList()..sort((a, b) => (a as num).compareTo(b as num));
    final middle = length ~/ 2;
    if (length.isEven) {
      return ((sorted[middle - 1] as num) + (sorted[middle] as num)) / 2;
    } else {
      return sorted[middle] as double;
    }
  }

  /// Returns the element with the maximum value
  /// according to the provided [comparator].
  /// Example: `[3, 1, 4].max((a, b) => a.compareTo(b))` returns `4`.
  T? max(Comparator<T> comparator) =>
      isEmpty ? null : reduce((a, b) => comparator(a, b) > 0 ? a : b);

  /// Returns the element with the minimum value
  /// according to the provided [comparator].
  /// Example: `[3, 1, 4].min((a, b) => a.compareTo(b))` returns `1`.
  T? min(Comparator<T> comparator) =>
      isEmpty ? null : reduce((a, b) => comparator(a, b) < 0 ? a : b);

  /// Returns a new iterable with elements that are the result of
  /// applying [transform] to each element in the original iterable.
  /// This extension is similar to `map`, but flattens the result.
  /// Example: `[[1, 2], [3, 4]].flatMap((e) => e)` returns `[1, 2, 3, 4]`.
  Iterable<E> flatMap<E>(Iterable<E> Function(T) transform) =>
      expand(transform);

  /// Returns a new iterable that applies [transform]
  /// to each element and its index.
  /// Example: `['a', 'b', 'c'].mapIndexed((index, e) => '$index: $e')`
  /// returns `['0: a', '1: b', '2: c']`.
  Iterable<E> mapIndexed<E>(E Function(int index, T element) transform) =>
      Iterable.generate(length, (index) => transform(index, elementAt(index)));

  /// Sorts the iterable in-place based on the provided [comparator].
  /// Example: `[3, 1, 4].sorted((a, b) => a.compareTo(b))` returns `[1, 3, 4]`.
  /// Note: This creates a new List; it does not sort the Iterable in-place.
  List<T> sorted(Comparator<T> comparator) => toList()..sort(comparator);

  /// Filters elements based on their successive value,
  /// removing duplicates in sequence.
  /// Example: `[1, 2, 2, 3, 3, 3, 4].distinctAdjacent()`
  /// returns `[1, 2, 3, 4]`.
  Iterable<T> distinctAdjacent() sync* {
    T? previous;
    var isFirst = true;

    for (final element in this) {
      if (isFirst || element != previous) {
        yield element;
        previous = element;
        isFirst = false;
      }
    }
  }

  /// Returns a Map<K, List<T>> where K is the key obtained by [keySelector]
  /// and List<T> are the items that share the same key.
  /// Example: `['apple', 'banana', 'cherry'].groupBy((e) => e.length)`
  /// returns `{5: ['apple'], 6: ['banana', 'cherry']}`.
  Map<K, List<T>> groupBy<K>(K Function(T) keySelector) {
    final map = <K, List<T>>{};
    for (final element in this) {
      final key = keySelector(element);
      map.putIfAbsent(key, () => []).add(element);
    }
    return map;
  }

  /// Returns this as sorted list using the [comparator] function.
  ///
  /// Example:
  /// ```dart
  /// [3, 1, 5, 9, 7].sortedBy((a,b) => a.compareTo(b)); // [1, 3, 5, 7, 9]
  /// ```
  List<T> sortedBy(Comparator<T> comparator) {
    ArgumentError.checkNotNull(comparator, 'comparator');
    final list = toList()..sort(comparator);
    return list;
  }
}
