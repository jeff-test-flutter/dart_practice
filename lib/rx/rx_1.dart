import 'package:rxdart/rxdart.dart';

final observableFromStream = Observable(
  Stream.fromIterable([1, 2, 3, 4, 5]),
);

final observableFromFuture = Observable.fromFuture(
  Future.value('Hello Dart'),
);

final observableFromIterable = Observable.fromIterable(
  ['a', 'b', 'c', 'd', 'e'],
);

void testObservableInterval() {
  print('參考資料： https://juejin.im/post/5bcea438e51d4536c65d2232 [part2]');
  // 不知道怎麼測試，所以寫在 main.dart 的 initState 。
  final observableInterval = Observable(
    Stream.fromIterable([9, 8, 7, 6]),
  ).interval(
    Duration(seconds: 1),
  );
  observableInterval.listen(print);
}

/// 迭代處理數據
final observableWithMap = Observable(
  Stream.fromIterable([9, 8, 7, 6]),
).map((item) => item + 4);

/// 檢查每一個 item
final observableWithEvery = Observable.fromIterable([1, 2, 3, 4, 5])
    .every((item) => item % 2 == 0)
    .asObservable();

/// 拆分流
final observableWithExpand = Observable(
  Stream.fromIterable([9, 8, 7, 6]),
).expand((item) => [item, item.toDouble(), '$item🤣']);

List<Stream> get _streams => List<Stream>.from([
      Stream.fromIterable(['a', 'b', 'c']),
      Stream.fromIterable(['d', 'e', 'f']),
      Stream.fromIterable(['g', 'h', 'i']),
    ]);

/// 合併流
final observableWithMerge = Observable.merge(_streams);

/// 順序執行多個流
final observableWithConcat =
    Observable.concat(_streams).map((item) => '$item🤣');
