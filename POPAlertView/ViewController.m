//
//  ViewController.m
//  POPAlertView
//
//  Created by Franky Wu on 2016/1/13.
//  Copyright © 2016年 All rights reserved.
//

#import "ViewController.h"
#import "PopupAlertController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popWithOneBtn:(id)sender {
    [PopupAlertController popAlertWithTitle:@"警告ㄧ" message:@"我有一個按鈕" btnTitle:@"按鈕ㄧ"];
}

- (IBAction)popWithTwoBtn:(id)sender {
    [PopupAlertController popAlertWithTitle:@"警告二" message:@"我有二個按鈕" cancelTitle:@"取消" otherTitle:@[@"確定"] otherBlock:^(UIAlertView *alertView, NSInteger btnIndex) {
        switch (btnIndex) {
            case 0:
                NSLog(@"Cancelled:%ld",(long)btnIndex);
                break;
            case 1:
                NSLog(@"Ok:%ld",(long)btnIndex);
                break;
        }
    }];
}
- (IBAction)popWithThreeBtn:(id)sender {
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
}

@end
