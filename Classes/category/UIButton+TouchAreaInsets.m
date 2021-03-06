//
//  UIButton+TouchAreaInsets.m
//  RYKit
//
//  Created by zhangll on 16/5/7.
//  Copyright © 2016年 安徽软云信息科技有限公司. All rights reserved.
//

#import <objc/runtime.h>
#import "UIButton+TouchAreaInsets.h"

@implementation UIButton (JLUtils)

- (UIEdgeInsets)touchAreaInsets
{
	return [objc_getAssociatedObject(self, @selector(touchAreaInsets)) UIEdgeInsetsValue];
}
/**
 *  @brief  设置按钮额外热区
 */
- (void)setTouchAreaInsets:(UIEdgeInsets)touchAreaInsets
{
    NSValue *value = [NSValue valueWithUIEdgeInsets:touchAreaInsets];
	objc_setAssociatedObject(self, @selector(touchAreaInsets), value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    UIEdgeInsets touchAreaInsets = self.touchAreaInsets;
    CGRect bounds = self.bounds;
    bounds = CGRectMake(bounds.origin.x - touchAreaInsets.left,
                        bounds.origin.y - touchAreaInsets.top,
                        bounds.size.width + touchAreaInsets.left + touchAreaInsets.right,
                        bounds.size.height + touchAreaInsets.top + touchAreaInsets.bottom);
	return CGRectContainsPoint(bounds, point);
}

@end
