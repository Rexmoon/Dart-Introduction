void main() {
  emitNumbers().listen((number) {
    print('Value -> $number');
  });
}

Stream<int> emitNumbers() async* {
  final List<int> collectionToEmit = [1, 2, 3, 4, 5];
  for (var x in collectionToEmit) {
    await Future.delayed(const Duration(seconds: 2));
    yield x;
  }
}
