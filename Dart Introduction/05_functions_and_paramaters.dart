void main() {
  final String greet = greetEveryone();
  final int suma = addTwoNumbers(5, 5);
  final int optionalSum = addTwoOptionalsNumbers(2, 2);

  print(greet);
  print('Suma: $suma');
  print(greetPerson(name: 'Bryan', message: 'Hi'));
  print(optionalSum);
}

String greetEveryone() => 'Hello Everyone';

int addTwoNumbers(int a, int b) => a + b;

int addTwoOptionalsNumbers([int a = 0, int b = 0]) => a + b;

String greetPerson({required String name, String message = 'Hello'}) {
  return '$message, $name';
}
