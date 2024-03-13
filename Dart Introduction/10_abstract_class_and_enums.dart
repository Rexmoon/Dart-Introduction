void main() {
  final circle = Circle(size: 100);

  circle.sizeDifference(size: 10);

  printShapeType(shape: circle);
  printShapeType(shape: Rectangle(ShapeType.rectangle, 100));
}

void printShapeType({required Shape shape}) {
  print('\n${shape.type.name}');
}

class Rectangle implements Shape {
  @override
  ShapeType type;

  @override
  double size;

  Rectangle(this.type, this.size);

  @override
  void sizeDifference({required double size}) {
    print('${this.size - size}');
  }
}

class Circle extends Shape {
  Circle({required double size}) : super(size: size, type: ShapeType.circle);

  @override
  void sizeDifference({required double size}) {
    print(super.size - size);
  }
}

abstract class Shape {
  double size;
  ShapeType type;

  Shape({required double this.size, required ShapeType this.type});

  void sizeDifference({required double size});
}

enum ShapeType {
  circle,
  square,
  rectangle;
}
