//
//  PopupAlertController.h
//
//  Created by Franky Wu on 2015/10/22.
//  Copyright © 2015年 All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^POPAlertBlocks)(UIAlertView *alertView, NSInteger btnIndex);
@interface PopupAlertController : UIAlertView <UIAlertViewDelegate>

+ (void)popAlertWithTitle:(NSString *)title
                  message:(NSString *)msg
                 btnTitle:(NSString *)btnTitle;

+ (void)popAlertWithTitle:(NSString *)title
                  message:(NSString *)msg
              cancelTitle:(NSString *)cancelTitle
               otherTitle:(NSArray  *)otherTitles
               otherBlock:(POPAlertBlocks)theblocks;
@end
