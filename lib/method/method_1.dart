// 固定參數
void _showName(String firstName, String lastName) =>
    print('firstName: $firstName, lastName: $lastName');

// 可選命名參數
// 在可選命名參數上是沒有順序要求的，但在混合固定參數的情況下還是要注意固定參數的順序是不能改變的。
// 可以有默認參數值。
void showName1({String firstName, String lastName}) =>
    _showName(firstName, lastName);

// 可選位置參數
// 顧名思義，就是通過位置來確定參數的對應的。
// 至於混合固定參數的調用方式，與可選命名參數類似，只是加了位置的限制。
// 可以有默認參數值。
void showName2([String firstName, String lastName]) =>
    _showName(firstName, lastName);
