// 工作者
abstract class Worker {
  void doWork(); // 工作者需要工作
}

// 工程師
class Engineer extends Worker {
  void doWork() => print('工程師在工作');
}

// 教師
class Teacher extends Worker {
  void doWork() => print('教師在教學');
}

abstract class CanFixComputer {
  factory CanFixComputer._() => null;

  void fixComputer() => print('修電腦');
}

abstract class CanDesignSoftware {
  factory CanDesignSoftware._() => null;

  void designSoftware() => print('程式設計');
}

// 軟件工程師
class SoftwareEngineer extends Engineer
    with CanFixComputer, CanDesignSoftware {
}

// IT教師
class ITTeacher extends Teacher with CanFixComputer
 {

}