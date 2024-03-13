void main() {
  final Circle _circle = Circle(ratio: 5);

  print('${_circle.ratio}');
}

class Circle {
  double ratio;

  Circle({required double ratio})
      : assert(ratio > 0, 'Ratio must to be greather than 0.'),
        this.ratio = ratio;
}
