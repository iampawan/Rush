extension ListExtensions<T> on List<T> {
  Iterable<R> mapIndexed<R>(R Function(int index, T value) f) {
    var index = 0;
    return map((value) => f(index++, value));
  }
}
