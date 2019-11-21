// 需要特別注意的是：子類不會繼承父類的構造方法。子類如果沒有定義構造方法，則只有一個默認的構造方法。
class User {
  String id;
  String name;

  // 建構子不支援重載
  User() {
    // 如果是空實作，其實預設就會自動生成。
  }

  // 命名構造方法
  User.fromID(String id) {
    this.id = id;
    showInfo();
  }

  // 命名構造方法
  User.fromName(this.name);

  void showInfo() => print('id: $id, name: $name');
}

class Member extends User {
  bool isVIP;

  // 默認情況下，子類的構造方法會自動調用父類的默認構造方法。父類的構造方法在子類構造方法開始執行的位置調用。
  Member.fromName(String name, this.isVIP) : super.fromName(name) {
    print(isVIP ? '是VIP' : '不是VIP');
  }

  // 如果提供了一個initializer list（初始化參數列表），則初始化參數列表會在父類構造方法執行之前執行。
  // 初始化列表非常適合用來設置final變量的值。
  Member.fromAuthorization({String id, String name})
      : isVIP = (id != null && name.isNotEmpty) {
    this.id = id;
    this.name = name;
  }

  // 重定向構造方法
  Member.fromIdForVIP(String id) : this.fromAuthorization(id: id, name: 'empty');

  @override
  void showInfo() {
    print('id: $id, name: $name, isVIP: $isVIP');
  }
}

// 常量構造方法
// 如果你需要提供一個狀態不變的對象，並在編譯時將這些對象編譯為常量。
// 做到這些，只需要定義一個const構造方法，並且把所有變量聲明為final類型。
class Guest {
  final String name;
  final bool isVIP;
  // 坦白說，看不是很懂想表達什麼＠＠
  const Guest({this.name, this.isVIP});
  static final guest = const Guest(name: 'guest', isVIP: false);
}