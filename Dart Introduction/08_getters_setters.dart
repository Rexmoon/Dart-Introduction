void main() {
  final Square square = Square(side: 5);

  square.side = 1;
}

class Square {
  double _side;

  double get area => _side * _side;

  set side(double value) {
    print('Setting new value -> $value');
    if (value < 0) throw 'Value must be bigger than 0';
    _side = value;
  }

  Square({required double side}) : _side = side;

  double calculateArea() => _side * _side;
}
