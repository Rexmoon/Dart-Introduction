void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'abilities': <int>[
      1, 2, 3
    ],
    'sprites': <int, String>{
      1: 'font',
      2: 'back'
    }
  };

  print(pokemon);
  print('Name: ${ pokemon['name'] }');
  
  /*
   * Map inside map print 
   */

  print('Back -> ${ pokemon['sprites'][2] }');
  print('Back -> ${ pokemon['sprites'][1] }');
}