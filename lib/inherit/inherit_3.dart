// 下面這一段 on 後面的 Someone 可為接口也可為類別。
// 這邊 Someone 為類別，意思是要 with User 之前要先 extends Someone 。
class Someone {
  final String id;

  Someone(this.id);
}

mixin User on Someone {
  void showID() => print(id);
}

class VIP1 extends Someone with User {
  VIP1(String id) : super(id);
}

// 下面這一段 on 後面的 Notification 可為接口也可為類別。
// 這邊 Notification 為類別，意思是要 with User 之前要先實作 implements Notification 的類別，再 extends 該類別。
class Notification {
  String get _getMessage => 'welcome';
}

mixin Guest on Notification {
  void showMessage() {
    final message = _getMessage;
    print(message);
  }
}

class Member implements Notification {
  @override
  String get _getMessage => 'please signin first';
}

class VIP2 extends Member with Guest {
  @override
  void showMessage() => super.showMessage();
}
