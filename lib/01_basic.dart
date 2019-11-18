// 在 Dart 中，所有对象初始值都为 null ，他们继承自 Object 。

// Dart 没有 类java 的权限修饰符（public、protected、private），
// 但有一个_的标识符，如果以这个标识符开头，代表这个标识符在当前类中是私有的，这点有点类似 OC 的-和+。

// final 修饰符修饰的变量只能赋值一次，而 const 变量是一个编译时的常量。

import 'package:flutter/foundation.dart';

void main() {
  // 通过三个单引号或者双引号可以创建多行字符串
  final multiLine = '''
This is a Flutter demo,
this is the second line.
''';
  debugPrint(multiLine);

  // 通过 r 前缀可以创建一个原始字符串
  final rawContent = 'This is a Flutter demo, \nthis is the second line.';
  debugPrint(rawContent);

  // 前面提到的字符串 String 是 UTF-1 6的编码序列，而当要表达32位的 Unicode 值时就需要使用 runes 了。
  // 如下面的定义里面， dart 将会把变量 smile 当做 runes 来处理
  final smile1 = '\u{1f600}';
  debugPrint('String smile: $smile1');
  final smile2 = Runes('\u{1f600}');
  debugPrint('Runes smile: ${String.fromCharCodes(smile2)}');
}