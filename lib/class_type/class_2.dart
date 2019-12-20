// 如果一個構造方法並不總是返回一個新的對象，這個時候可以使用factory來定義這個構造方法。
class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  // 可以看到上面示例代碼中默認構造方法前面還有個factory，這個關鍵字代表著這是個工廠構造方法。
  // 坦白說，看不是很懂想表達什麼＠＠
  factory Logger(String name) {
    //以官方文檔為例，一個工廠構造方法可能從緩存中獲取一個實例返回，或者返回一個新的實例：
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      // 要注意的是工廠構造方法時沒法訪問this關鍵字的，所以上面就有了在類的內部這麼調用構造方法的代碼：final logger = Logger._internal(name);。
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

// 抽象類使用abstract關鍵字定義，是不能被實例化的，通常用來定義接口以及部分實現。
// 在Dart中，只要類使用了abstract定義，那麼它的方法只需要以一個分號來代替方法體，就代表這個方法為抽象方法。
abstract class Bird {
  void fly();
}

class Sparrow extends Bird {
  void fly() {
    print('起飛~');
  }
}

// 枚舉的values常量可以返回所有枚舉值
enum Color {
  red,
  green,
  blue
}