import 'package:jeff_practice/method/method_1.dart';
import 'package:test/test.dart';

void main() {
  test('', () {
    print('參考資料： https://kevinwu.cn/p/cd63c3a3 [part1]');
    showName1();
    showName1(firstName: 'jeff');
    showName1(lastName: 'chiu');
    showName1(firstName: 'jeff', lastName: 'chiu');
  });

  test('', () {
    print('參考資料： https://kevinwu.cn/p/cd63c3a3 [part2]');
    showName2();
    showName2('jeff');
    showName2(null ,'chiu');
    showName2('jeff', 'chiu');
  });
}
