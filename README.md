//</br>
//  Created by Franky Wu on 2016/1/13.</br>
//  Copyright © 2015年 All rights reserved.</br>
//</br>

#使用方法

* 間單的Popup
```
[PopupAlertController popAlertWithTitle:@"警告ㄧ" message:@"我有一個按鈕" btnTitle:@"按鈕ㄧ"];
```

* 兩個按鈕以上的Popup
```
[PopupAlertController popAlertWithTitle:@"警告三" message:@"我有三個按鈕" cancelTitle:@"取消" otherTitle:@[@"one",@"two"] otherBlock:^(UIAlertView *alertView, NSInteger btnIndex) {
    switch (btnIndex) {
        case 0:
            NSLog(@"Cancelled:%ld",(long)btnIndex);
        break;
        case 1:
            NSLog(@"Have one:%ld",(long)btnIndex);
        break;
        case 2:
            NSLog(@"Have two:%ld",(long)btnIndex);
        break;
    }
}];
```
