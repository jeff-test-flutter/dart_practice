class A1 {
  void a() => print('a for a1');

  void a1() => print('a1');
}

class A2 {
  void a() => print('a for a2');

  void a2() => print('a2');
}

class B with A1, A2 {}

class B1 with A1, A2 {}

class B2 with A2, A1 {}

class C {
  void a() => print('a for c');
}

class B3 extends C with A1, A2 {}

class B4 extends C with A2, A1 {}

class B5 extends C with A2, A1 {
  void a() => print('a for b5');
}
