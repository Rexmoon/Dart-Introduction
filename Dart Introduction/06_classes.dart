void main() {
  final Hero spiderMan = Hero(name: 'Spiderman', power: 'Strong');

  print(spiderMan.name);
  print(spiderMan.power);
  print(spiderMan.toString());
}

class Hero {
  final String name;
  final String power;

  Hero({required this.name, this.power = 'Sin poder'});

  // Hero(String name, String power)
  //     : this.name = name,
  //       this.power = power;

  @override
  String toString() => '$name - $power';
}
