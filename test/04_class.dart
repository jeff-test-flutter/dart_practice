import 'package:jeff_practice/classType/class_1.dart';
import 'package:jeff_practice/classType/class_2.dart';
import 'package:test/test.dart';

void main() {
  test('', () {
    print('參考資料： https://kevinwu.cn/p/866bb091 [part1]');
    User().showInfo();
    User.fromID('9527').showInfo();
    User.fromName('jeff').showInfo();
    Member.fromName('rita', false).showInfo();
    Member.fromAuthorization(id: '9487', name: 'tony').showInfo();
    Member.fromIdForVIP('6666');
  });

  test('', () {
    print('參考資料： https://kevinwu.cn/p/866bb091 [part2]');
    final guest1 = Guest(name: 'peter', isVIP: true);
    print('name: ${guest1.name}, isVIP: ${guest1.isVIP}');
    final guest2 = Guest.guest;
    print('name: ${guest2.name}, isVIP: ${guest2.isVIP}');
    final logger = Logger('UI');
    logger.log('Button clicked');
    Sparrow().fly();
  });

  test('', () {
    print('參考資料： https://kevinwu.cn/p/866bb091 [part3]');

  });
}
