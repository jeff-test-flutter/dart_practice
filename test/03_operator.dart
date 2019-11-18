import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  test('', () => divOperator());

  test('', () => equalOperator());

  test('', () => equalList());

  test('', () => cascadeOperator());

  test('', () => isOperator());

  test('', () => assignOperator());

  test('', () => assertOperator());

  test('', () => errorHandler());
}

void divOperator() {
  debugPrint('👻👻👻 divOperator 👻👻👻');
  final result1 = 5 / 2; // 求商(小數)
  debugPrint('$result1');
  final result2 = 5 % 2; // 求餘數
  debugPrint('$result2');
  final result3 = 5 ~/ 2; // 求商(整數)
  debugPrint('$result3');
}

void equalOperator() {
  debugPrint('👻👻👻 equalOperator 👻👻👻');
  final number1 = 1;
  final number2 = 2;
  final number3 = number1;
  final number4 = 1;

  // 判断两个对象是否是同一个对象
  debugPrint('${identical(number1, number2)}');
  debugPrint('${identical(number1, number3)}');

  // 判斷两个对象是否是同样的内容
  debugPrint('${number1 == number2}');
  debugPrint('${number1 == number3}');
  debugPrint('${number1 == number4}');
}

void equalList() {
  debugPrint('👻👻👻 equalList 👻👻👻');
  final list1 = [1, 3, 2];
  final list2 = [1, 4, 2];
  final list3 = list1;
  final list4 = [1, 3, 2];

  // 判斷两个陣列是否是同样的内容
  debugPrint('${listEquals(list1, list2)}');
  debugPrint('${listEquals(list1, list3)}');
  debugPrint('${listEquals(list1, list4)}');
}

class CascadeOperatorObject {
  num number;
  String content;
}

void cascadeOperator() {
  var object = CascadeOperatorObject()
    ..number = 1
    ..content = 'test';
  debugPrint('number: ${object.number}; content: ${object.content}');
  // 上下兩段寫法等價
  object = CascadeOperatorObject();
  object.number = 2;
  object.content = 'XD';
}

class IsOperatorTestObject {
  num number;
}

class IsOperatorTestObject1 extends IsOperatorTestObject {
  num age;
}

class IsOperatorTestObject2 extends IsOperatorTestObject {
  num amount;
}

void isOperator() {
  debugPrint('👻👻👻 isOperator 👻👻👻');
  IsOperatorTestObject object;
  final object1 = IsOperatorTestObject1()..age = 18;
  final object2 = IsOperatorTestObject2()..amount = 6;

  object = object1;
  // 判斷物件是否為某特定型別
  if (object is IsOperatorTestObject) {
    debugPrint('${object.number}');
  } else if (object is IsOperatorTestObject1) {
    // 判斷完 object 順便可以直接當 IsOperatorTestObject1 使用
    debugPrint('${object.age}');
  } else if (object is IsOperatorTestObject2) {
    // 判斷完 object 順便可以直接當 IsOperatorTestObject2 使用
    debugPrint('${object.amount}');
  }

  object = object2;
  // 判斷物件是否非某特定型別
  if (object is! IsOperatorTestObject2) {
    debugPrint('${object.number}');
  }
}

void assignOperator() {
  debugPrint('👻👻👻 defaultOperator 👻👻👻');
  int value = 7;

  // 若 result1 非 null ，則不變
  int result1 = 666;
  result1 ??= value;
  debugPrint('result1: $result1');

  // 若 result2 為 null ，則陚值
  int result2;
  result2 ??= value;
  debugPrint('result2: $result2');
}

void assertOperator() {
  debugPrint('👻👻👻 assertOperator 👻👻👻');
  void showAge(int age) {
    assert(age >= 0);
    debugPrint('age: $age');
  }

  showAge(12);
  showAge(-2);
}

void errorHandler() {
  debugPrint('👻👻👻 errorHandler 👻👻👻');
  void showAge(int age) {
    if (age >= 0) {
      debugPrint('age: $age');
    } else {
      throw 'age must be positive value.';
    }
  }

  // 需要注意的是 catch() 可以带有一个或者两个参数，第一个参数为抛出的异常对象，第二个为堆栈信息
  try {
    showAge(-2);
  } catch (e, stack) {
    debugPrint('e: $e');
    debugPrint('stack: $stack');
  }

  void signIn({String account, String password}) {
    // Dart提供Exception和Error类型，和一些基于这两种类型的子类，或者你可以定义自己的异常类型。
    // 但是，Dart并不要求只能抛出这两种类型或其子类的异常，而是可以抛出任何非null的对象作为异常。
    if (account == null || account.isEmpty) {
      throw 'account can not be empty.';
    }
    if (password == null || password.isEmpty) {
      throw FormatException('password can not be empty.');
    }
    debugPrint('signin sccess');
  }

  try {
    signIn(account: 'jeff');
  } on Exception catch (exception) {
    debugPrint('exception: $exception');
  } catch (error) {
    debugPrint('error: $error');
  } finally {
    //为了确保不论是否抛出异常，代码都正常运行，请使用 finally 子句
    debugPrint('signin procedure done');
  }
  try {
    signIn(password: 'is666');
  } on Exception catch (exception) {
    debugPrint('exception: $exception');
  } catch (error) {
    debugPrint('error: $error');
  } finally {
    //为了确保不论是否抛出异常，代码都正常运行，请使用 finally 子句
    debugPrint('signin procedure done');
  }
  try {
    signIn(account: 'jeff', password: 'is666');
  } on Exception catch (exception) {
    debugPrint('exception: $exception');
  } catch (error) {
    debugPrint('error: $error');
  } finally {
    //为了确保不论是否抛出异常，代码都正常运行，请使用 finally 子句
    debugPrint('signin procedure done');
  }

  void signInController() {
    try {
      signIn(account: 'jeff');
    } catch (error) {
      rethrow; // 可以重新抛出捕获的异常
    }
  }

  try {
    signInController();
  } catch (error) {
    debugPrint('rethrow error: $error');
  }
}
