import 'package:jeff_practice/rx/rx_1.dart';
import 'package:jeff_practice/rx/rx_2.dart';
import 'package:test/test.dart';

void main() {
  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part1]');
    observableFromStream.listen(print);
    observableFromFuture.listen(print);
    observableFromIterable.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part3]');
    observableWithEvery.listen(print);
    observableWithMap.listen(print);
    observableWithExpand.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part4]');
    // 留意輸出順序
    observableWithMerge.listen(print);
    observableWithConcat.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part5]');
    // Dart中 Observables 默認是單一訂閱。如果您嘗試兩次收聽它，則會拋出 StateError 。你可以使用工廠方法或者 asBroadcastStream 將其轉化為多訂閱流。
    observableBroadcast
        .map((item) => item + 5)
        .listen(print);
    observableBroadcast.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part6]');
    doBehaviorSubjectAdd();
    behaviorStream.listen(print);
    behaviorStream.listen(print);
    behaviorStream.listen(print);
    doBehaviorSubjectAdd();
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part7]');
    stream.listen(print);
    stream.listen(print);
    stream.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part8]');
    doReplaySubjectAdd();
    replayStream.listen(print);
    // 可以通過maxSize控制緩存個數
    doReplaySubjectWithLimitAdd();
    replayStreamWithLimit.listen(print);
  });
}
