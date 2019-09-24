//
//  NSString+Phone.h
//  RYKit
//
//  Created by 软云 on 16/4/20.
//  Copyright © 2016年 软云. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Expression)

/**
 *  是否是手机号
 */
+ (BOOL)isPhone:(NSString *)number;

/**
 *  是否是密码
 */
+ (BOOL)isPassword:(NSString *)password;

/**
 *  是否是数字
 *
 */
+ (BOOL)isNumber:(NSString *)number;

/**
 *  是否是中文
 *
 */
+ (BOOL)isChinese:(NSString *)chinese;

/**
 *  是否是emoji
 *
 */
+ (BOOL)isContainsEmoji:(NSString *)string;

/**
 *  身份证验证
 *
 */
+ (BOOL)IsIdentityCard:(NSString *)identityCard;

/**
 银行卡验证
 */
+ (BOOL)isBankNo:(NSString *)bankNo;
@end
