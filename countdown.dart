Future<void> countdown(int a) async {
  for (var i = a; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1),
    () =>print(i),
    ); 
  }
}

Future<void> main() async {
  await countdown(10);
  print('Done');
}