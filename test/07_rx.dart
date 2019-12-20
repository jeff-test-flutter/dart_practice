import 'package:jeff_practice/rx/rx_1.dart';
import 'package:jeff_practice/rx/rx_2.dart';
import 'package:jeff_practice/rx/rx_3.dart';
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
    observableWithExpand.listen(print);
  });

  // 其實分不出 flatMap 跟 concatMap 的差異，或許未來多累積一些經驗再回頭來研讀。
  group('', () {
    test('', () {
      print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part4-1]');
      observableWithMap.listen(print);
    });

    test('', () {
      print('參考資料： https://juejin.im/post/5d57cb25f265da03ae7872be#heading-13 [part4-2]');
      observableWithFlatMap.listen(print);
    });

    test('', () {
      print('參考資料： https://juejin.im/post/5d57cb25f265da03ae7872be#heading-13 [part4-3]');
      observableWithConcatMap.listen(print);
    });
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part5]');
    // 留意輸出順序
    observableWithMerge.listen(print);
    observableWithConcat.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part6]');
    // Dart中 Observables 默認是單一訂閱。如果您嘗試兩次收聽它，則會拋出 StateError 。你可以使用工廠方法或者 asBroadcastStream 將其轉化為多訂閱流。
    observableBroadcast
        .map((item) => item + 5)
        .listen(print);
    observableBroadcast.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part7]');
    doBehaviorSubjectAdd();
    behaviorStream.listen(print);
    behaviorStream.listen(print);
    behaviorStream.listen(print);
    doBehaviorSubjectAdd();
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part8]');
    stream.listen(print);
    stream.listen(print);
    stream.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part9]');
    doReplaySubjectAdd();
    replayStream.listen(print);
    // 可以通過maxSize控制緩存個數
    doReplaySubjectWithLimitAdd();
    replayStreamWithLimit.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5d57cb25f265da03ae7872be#heading-13 [part1]');
    justObservable.listen(print);
    whereObservable.listen(print);
    distinctObservable.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5d57cb25f265da03ae7872be#heading-13 [part2]');
    skipObservable.listen(print);
    takeObservable.listen(print);
  });

  test('', () {
    print('參考資料： https://juejin.im/post/5d57cb25f265da03ae7872be#heading-13 [part2]');
    // startWith 、 merge 、 combineLatest 跟 mergeWith 還沒讀
  });
}
