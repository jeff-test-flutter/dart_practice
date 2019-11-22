import 'package:jeff_practice/library/library_1.dart' as L1 show showName, name;
import 'package:jeff_practice/library/library_2.dart' as L2
    hide name
    show showName, age;
import 'package:jeff_practice/library/library_3.dart' deferred as L3;
import 'package:test/test.dart';

void main() {
  test('', () {
    print('參考資料： https://kevinwu.cn/p/e289c2b7 [part1]');
    L1.showName();
    print(L1.name);
    L2.showName();
    print(L2.age);
  });

  test('', () async {
    print('參考資料： https://kevinwu.cn/p/e289c2b7 [part2]');
    await L3.loadLibrary();
    final data = await L3.getData();
    print('data: $data');
  });
}
