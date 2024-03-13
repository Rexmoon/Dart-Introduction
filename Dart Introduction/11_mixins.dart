abstract class Animal {
  void animalPrint() {
    print('I am an animal');
  }
}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {
  void birdPrint() {
    print('I am a bird');
  }
}

abstract class Fish extends Animal {
  void fishPrint() {
    print('I am a fish');
  }
}

// Has initializer
mixin class Swimmer {
  void swimPrint() {
    print('Can swim');
  }
}

mixin Walker {
  void walkPrint() {
    print('Can walk');
  }
}

mixin Flier {
  void flyPrint() {
    print('Can fly');
  }
}

class Dolphin extends Fish with Flier implements Bird {
  @override
  void birdPrint() {
    // TODO: implement birdPrint
  }
}

class Bat extends Mammal with Walker, Flier {
  late Swimmer swimmer;
}

class Cat extends Mammal {}

class Dove extends Bird with Flier {}

class Duck extends Animal with Walker, Swimmer implements Flier {
  @override
  void flyPrint() {
    // TODO: implement flyPrint
    print('I am a Duck and I can Fly');
    super.animalPrint();
    super.walkPrint();
    super.swimPrint();
  }
}

void main() {
  final Duck duck = Duck();
  duck.swimPrint();
  duck.flyPrint();
}
