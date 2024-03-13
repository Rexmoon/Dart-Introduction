void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Bruce Banner',
    'power': 'Strong',
    'isAlive': true
  };

  final Hero hulk = Hero.fromJson(rawJson);

  print(hulk);
}

class Hero {
  final String name;
  final String power;
  final bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> rawJson)
      : name = rawJson['name'] ?? 'No name',
        power = rawJson['power'] ?? 'No power',
        isAlive = rawJson['isAlisve'] ?? false;

  String toString() {
    return '$name, $power, ${isAlive ? 'Yes!' : 'No'}';
  }
}
