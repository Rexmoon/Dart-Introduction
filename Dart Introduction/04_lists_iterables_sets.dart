void main() {
  /*
   * Lists
   */

  final List<int> list = [1, 2, 3, 4, 4, 5, 6, 6];

  print(list);
  print(list.first);
  print(list.length);

  /*
   * Iterables
   */

  final iterable = list.reversed;

  print("Iterable -> $iterable (1, 1, 1)");
  print("List -> ${iterable.toList()} [1, 1, 1]");
  print("Set -> ${iterable.toSet()} {1, 1, 1}");
  print("String -> ${iterable.toString()}");
}
