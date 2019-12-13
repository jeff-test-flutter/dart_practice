import 'package:rxdart/rxdart.dart';

// 出現錯誤時，Dart中的Stream不會默認關閉。但是在Rxdart中，Error會導致Observable終止，除非它被運算符攔截。

// 默認情況下Dart中Stream是異步的，而Observables默認是同步的。

// 在處理多訂閱Observable的時候，onListen方法只有在第一次會被調用。且各個訂閱者之間不會互相干涉。

final observableBroadcast =
    Observable(Stream.fromIterable([1, 2, 3, 4, 5])).asBroadcastStream();

// PublishSubject就是一個普通廣播版StreamController，你可以多次收聽，默認是sync是false，也就是說裡面是一個AsyncBroadcastStreamController 異步廣播流。

// BehaviorSubject也是一個廣播流，但是它能記錄下最新一次的事件，並在新的收聽者收聽的時候將記錄下的事件作為第一幀發送給收聽者。

final _behaviorSubject = BehaviorSubject<int>();

Stream<int> get behaviorStream => _behaviorSubject.stream;

void doBehaviorSubjectAdd() {
  _behaviorSubject.add(1);
  _behaviorSubject.add(2);
  _behaviorSubject.add(3);
}

// seedValue作為初始值，在後面有收聽者的時候同樣會把它當成最後一次的value發送給收聽者。

final _subject = BehaviorSubject<int>.seeded(9487);

Stream<int> get stream => _subject.stream;

// ReplaySubject能夠緩存更多的值，默認情況下將會緩存所有值，並在新的收聽的時候將記錄下的事件作為第一幀發送給收聽者。

final _replaySubject = ReplaySubject<int>();

Stream<int> get replayStream => _replaySubject.stream;

void doReplaySubjectAdd() {
  _replaySubject.add(1);
  _replaySubject.add(2);
  _replaySubject.add(3);
}

final _replaySubjectWithLimit = ReplaySubject<int>(maxSize: 2);

Stream<int> get replayStreamWithLimit => _replaySubjectWithLimit.stream;

void doReplaySubjectWithLimitAdd() {
  _replaySubjectWithLimit.add(4);
  _replaySubjectWithLimit.add(5);
  _replaySubjectWithLimit.add(6);
}

// 當你不再收聽Subject，或者Subject不再使用時，請務必釋放它。你可以調用subscription的cancel()方法讓某個聽眾取消收聽，或者Subject.close()，關閉整個流。