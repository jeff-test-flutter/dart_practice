import 'package:jeff_practice/inherit/inherit_1.dart';
import 'package:jeff_practice/inherit/inherit_2.dart';
import 'package:jeff_practice/inherit/inherit_3.dart';
import 'package:jeff_practice/inherit/inherit_4.dart';
import 'package:test/test.dart';

void main() {
  // 在Flutter中，有如下三种关系：
  //
  // 继承（关键字 extends）
  // 混入 mixins （关键字 with）
  // 接口实现（关键字 implements）
  //
  // 这三种关系可以同时存在，但是有前后顺序：
  // extends ->  mixins -> implements
  // extens在前，mixins在中间，implements最后。
  test('', () {
    print('參考資料： https://juejin.im/post/5c4881dae51d45098e4d96cf');
    final smartTelevision = SmartTelevision();
    smartTelevision.turnOn();
    smartTelevision.playCarton();
    smartTelevision.playMovie();
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5c44382d51882523f0261bb5 [part1]');
    final b = B();
    b.a();
    b.a1();
    b.a2();
    final b1 = B1();
    b1.a();
    final b2 = B2();
    b2.a();
    final b3 = B3();
    b3.a();
    final b4 = B4();
    b4.a();
    final b5 = B5();
    b5.a();
    // 很简单， mixins 的类型就是其超类的子类型，所以：
    print(b3 is C);
    print(b3 is A1);
    print(b3 is A2);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5c44382d51882523f0261bb5 [part2]');
    final vip1 = VIP1('9527');
    vip1.showID();
    final vip2 = VIP2();
    vip2.showMessage();
  });

  test('', () {
    print('參考資料： https://kevinwu.cn/p/ae2ce64/');
    ITTeacher itTeacher = ITTeacher();
    itTeacher.doWork();
    itTeacher.fixComputer();
    SoftwareEngineer softwareEngineer = SoftwareEngineer();
    softwareEngineer.doWork();
    softwareEngineer.fixComputer();
    softwareEngineer.designSoftware();
  });
}
