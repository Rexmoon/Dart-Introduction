void main() {

  final String pokemon = "Pikachu";
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ["Electric, Earth"];
  final numbers = <int>[1, 2];
  
  bool? isDead;

  dynamic dynamicVariable = 'Error: Code 500';

  dynamicVariable = [1, 2, 3, 4];
  dynamicVariable = {1, 1, 2};

  /*
   * Dynamic type is null by default value 
   * Dynamic type must be used carefully
   */


  print(
    """
      Pokemon -> $pokemon
      HP -> $hp
      Alive -> $isAlive
      Abilities -> $abilities
      Dead -> $isDead
      Numbers -> $numbers
      Error Message -> $dynamicVariable
    """
  );

}