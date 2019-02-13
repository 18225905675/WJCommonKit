//
//  WRNavigationBar+YYIhoneX.m
//  YanYuan
//
//  Created by RuanYunKeji on 2018/12/4.
//  Copyright © 2018 安徽软云科技. All rights reserved.
//

#import "WRNavigationBar+YYIhoneX.h"

@implementation WRNavigationBar (YYIhoneX)

+ (void)load {
    Method newMethod = class_getClassMethod([self class], @selector(isIphoneXOrNew));
    Method originalMethod = class_getClassMethod([self class], @selector(isIphoneX));
    method_exchangeImplementations(newMethod, originalMethod);
}

+ (BOOL)isIphoneXOrNew {
    if ([UIApplication sharedApplication].statusBarFrame.size.height == 44) {
        return YES;
    }
    return NO;
}

@end
