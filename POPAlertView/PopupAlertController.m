//
//  PopupAlertController.m
//
//  Created by Franky Wu on 2015/10/22.
//  Copyright © 2015年 All rights reserved.
//

#import "PopupAlertController.h"

@interface PopupAlertController () <UIAlertViewDelegate>

@property (nonatomic, copy) POPAlertBlocks otherBlocks;

@end

@implementation PopupAlertController

- (instancetype)initAlertWithTitle:(NSString *)title
                           message:(NSString *)msg
                       cancelTitle:(NSString *)cancelTitle
                        otherTitle:(NSArray  *)otherTitles
                            blocks:(POPAlertBlocks)theblocks {
    NSString *firstTitles = otherTitles.count ? otherTitles[0] : nil;
    self = [super initWithTitle:title
                        message:msg
                       delegate:self
              cancelButtonTitle:cancelTitle
              otherButtonTitles:firstTitles, nil];
    if (self) {
        if (otherTitles.count > 1) {
            for (NSString *btnTitle in [otherTitles subarrayWithRange:NSMakeRange(1, otherTitles.count - 1)]) {
                [super addButtonWithTitle:btnTitle];
            }
        }
        
        if (theblocks == nil) {
            self.delegate = nil;
        } else {
            _otherBlocks = theblocks;
        }
    }
    
    return self;
}

#pragma mark - AlertView Delegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (_otherBlocks) {
        _otherBlocks(alertView,buttonIndex);
    }
}

#pragma mark - Called Methods
+ (void)popAlertWithTitle:(NSString *)title
                  message:(NSString *)msg
                 btnTitle:(NSString *)btnTitle {
    [self popAlertWithTitle:title
                    message:msg
                cancelTitle:btnTitle
                 otherTitle:nil
                 otherBlock:nil];
}

+ (void)popAlertWithTitle:(NSString *)title
                  message:(NSString *)msg
              cancelTitle:(NSString *)cancelTitle
               otherTitle:(NSArray  *)otherTitles
               otherBlock:(POPAlertBlocks)theblocks {
    [[[self alloc] initAlertWithTitle:title
                              message:msg
                          cancelTitle:cancelTitle
                           otherTitle:otherTitles
                               blocks:theblocks] show];
}

@end
