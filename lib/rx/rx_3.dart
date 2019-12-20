import 'package:rxdart/rxdart.dart';

final _numberList = [1, 2, 3, 4, 5, 6];
final _characterList = ['a', 'b', 'c', 'd', 'e'];

/// 創建一個被觀察者
final justObservable = Observable.just('test');

/// 過濾操作符就是用來過濾掉 Observable 發射的一些數據，丟棄這些數據只保留過濾後的數據。
final whereObservable =
    Observable.fromIterable(_numberList).where((number) => number % 2 == 0);

/// 如果我們想跳過前幾個數字，我們可以使用 skip 操作符。
final skipObservable = Observable.fromIterable(_characterList)
    .skip(3)
    .map((character) => '㊙️$character');

/// 和 skip 操作相反，如果我們去掉後面數據，只輸出前面幾個數據。
final takeObservable = Observable.fromIterable(_characterList)
    .take(3)
    .map((character) => '👻️$character');

/// 過濾掉原始數據里重復的項
final distinctObservable =
    Observable.fromIterable(['apple', 'banana', 'apple', 'orange'])
        .distinctUnique();
