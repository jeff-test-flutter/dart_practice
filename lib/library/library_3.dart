Future<String> getData() async {
  return Future.delayed(Duration(seconds: 3), () => 'no data');
}
