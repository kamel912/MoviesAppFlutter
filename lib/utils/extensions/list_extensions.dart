extension Splitter<E> on List<E> {
  List<E> splitFrom(int startIndex) {
    if (startIndex <= 0) throw ArgumentError.value(startIndex, 'Start index', "can't be negative or zero");
    final List<E> slice = <E>[];
    for (int i = startIndex; i < this.length; i++) {
      slice.add(this[i]);
    }
    return slice;
  }

  List<E> splitTo(int endIndex) {
    if (endIndex > this.length)
      throw ArgumentError.value(endIndex, 'End index', "can't be larger than list length");
    final List<E> slice = <E>[];
    for (int i = 0; i < endIndex; i++) {
      slice.add(this[i]);
    }
    return slice;
  }

  List<E> splitRange(int startIndex, int endIndex) {
    if (startIndex <= 0) throw ArgumentError.value(startIndex, 'Start index', "can't be negative or zero");
    if (endIndex > this.length)
      throw ArgumentError.value(endIndex, 'End index', "can't be larger than list length");
    final List<E> slice = <E>[];
    for (int i = 0; i < endIndex; i++) {
      slice.add(this[i]);
    }
    return slice;
  }
}
