void main() {
  emitNumbers().listen((num) {
    print('Stream value -> $num');
  });

// Empty

  const Stream stream = Stream.empty();

  stream.listen(
    (value) {
      throw 'Unreachable';
    },
    onDone: () {
      print('Stream Done');
    },
  );

// Error

  tryThings(Stream<int>.error('Hi I am an Error!'));
}

// Periodic

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(10);
}

// Error

Future<void> tryThings(Stream<int> data) async {
  try {
    await for (var x in data) {
      print('Variable -> $x');
    }
  } catch (e) {
    print(e);
  }
}
