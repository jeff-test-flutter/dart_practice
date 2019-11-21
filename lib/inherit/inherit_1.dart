class Television {
  void turnOn() => _illuminateDisplay();

  void _illuminateDisplay() => print('_illuminateDisplay');
}

// Flutter是没有interface的，但是Flutter中的每个类都是一个隐式的接口，这个接口包含类里的所有成员变量，以及定义的方法。
// 如果有一个类 A,你想让类B拥有A的API，但又不想拥有A里的实现，那么你就应该把A当做接口，类B implements 类A.
// 所以在Flutter中: class 就是 interface
// 当class被当做interface用时，class中的方法就是接口的方法，需要在子类里重新实现，在子类实现的时候要加@override
// 当class被当做interface用时，class中的成员变量也需要在子类里重新实现。在成员变量前加@override
// 实现接口可以有多个
class Carton {
  String cartonName = 'carton';

  void playCarton() => print('playCarton');
}

class Movie {
  String movieName = 'movie';

  void playMovie() => print('playMovie');
}

// 在面向对象的语言中，mixins类是一个可以把自己的方法提供给其他类使用，但却不需要成为其他类的父类。
class Update {
  void updateApp() => print('updateApp');
}

class Charge {
  void chargeVip() => print('chargeVip');
}

// Flutter中的子类可以访问父类中的所有变量和方法，因为Flutter中没有公有、私有的区别。
class SmartTelevision extends Television
    with Update, Charge
    implements Carton, Movie {
  @override
  String cartonName = 'implements_carton';
  @override
  String movieName = 'implements_moview';

  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    updateApp();
    chargeVip();
  }

  @override
  void playCarton() => print('👻 $cartonName');

  @override
  void playMovie() => print('👻 $movieName');

  void _bootNetworkInterface() => print('_bootNetworkInterface');
}
