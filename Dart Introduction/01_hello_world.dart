void main() {

  /*
 * Variables type
 */

  // String myName = "Luna";

  // var myName = "Luna";

  // final myName = "Luna";

  // const myName = "Luna";

  late String myName;

  myName = "Jose Luna";

/*
 * Interpolation / Type injection
 */

  print('Hello world my name is $myName');
  print('Hello world my name is ${ myName.toUpperCase() }');
  print('Hello ${ 1 + 1 }');
}