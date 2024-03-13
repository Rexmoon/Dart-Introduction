import 'dart:math' as Math;

void main() {
  // getString(url: 'https://www.luna.com/repository')
  //     .then(
  //       (value) => print(value),
  //     )
  //     .catchError((error) => print(error));

  isPair().then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  });
}

Future<String> getString({required String url}) {
  const int delay = 2;
  print('Waiting... $delay');
  return Future.delayed(const Duration(seconds: delay), () {
    final random = Math.Random().nextInt(50);

    print('Random number -> $random');

    if (random % 2 == 0) {
      return 'Request Successfully';
    } else {
      throw 'Request Failed';
    }
  });
}

Future<bool> isPair() {
  return Future.delayed(Duration(seconds: 3), () {
    final int random = Math.Random().nextInt(20);
    print(random);
    return random % 2 == 0;
  });
}
