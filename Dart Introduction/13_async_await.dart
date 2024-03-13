void main() async {
  try {
    final value = await getString();
    print(value);
  } on Exception catch (error) {
    print('We have an Exception -> $error');
  } catch (error) {
    print('Error found -> $error');
  } finally {
    /// Aylwas executed
    print('Asycn function was finished!');
  }
}

Future<String> getString() async {
  await Future.delayed(Duration(seconds: 2));
  // return 'Done';
  throw Exception('Decoding Error');
}
