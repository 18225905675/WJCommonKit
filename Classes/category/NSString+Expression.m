//
//  NSString+Phone.m
//  RYKit
//
//  Created by 软云 on 16/4/20.
//  Copyright © 2016年 软云. All rights reserved.
//

#import "NSString+Expression.h"

@implementation NSString (Expression)

#pragma mark - phone
+ (BOOL)isPhone:(NSString *)number
{
    NSString *pattern = @"^1\\d{10}$";
    return [self predicate:pattern string:number];
}

#pragma mark - password
+ (BOOL)isPassword:(NSString *)password
{
    NSString *pattern = @"[a-z][A-Z][0-9]{6,20}";
    return [self predicate:pattern string:password];
}

#pragma mark - number
+ (BOOL)isNumber:(NSString *)number
{
    NSString *pattern = @"^\\d+$";
    return [self predicate:pattern string:number];
}

#pragma mark - Chinese
+ (BOOL)isChinese:(NSString *)chinese
{
    NSString *pattern = @"[\\u4E00-\\u9FA5]+";
    return [self predicate:pattern string:chinese];
}

#pragma mark - emoji
+ (BOOL)isContainsEmoji:(NSString *)string
{
    if ([UIApplication sharedApplication].textInputMode.primaryLanguage == nil) {
        return YES;
    }
    return NO;
    
    __block BOOL returnValue = NO;
    
    [string enumerateSubstringsInRange:NSMakeRange(0, [string length])
                               options:NSStringEnumerationByComposedCharacterSequences
                            usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                                const unichar hs = [substring characterAtIndex:0];
                                if (0xd800 <= hs && hs <= 0xdbff) {
                                    if (substring.length > 1) {
                                        const unichar ls = [substring characterAtIndex:1];
                                        const int uc = ((hs - 0xd800) * 0x400) + (ls - 0xdc00) + 0x10000;
                                        if (0x1d000 <= uc && uc <= 0x1f77f) {
                                            returnValue = YES;
                                        }
                                    }
                                } else if (substring.length > 1) {
                                    const unichar ls = [substring characterAtIndex:1];
                                    if (ls == 0x20e3) {
                                        returnValue = YES;
                                    }
                                } else {
                                    if (0x2100 <= hs && hs <= 0x27ff) {
                                        returnValue = YES;
                                    } else if (0x2B05 <= hs && hs <= 0x2b07) {
                                        returnValue = YES;
                                    } else if (0x2934 <= hs && hs <= 0x2935) {
                                        returnValue = YES;
                                    } else if (0x3297 <= hs && hs <= 0x3299) {
                                        returnValue = YES;
                                    } else if (hs == 0xa9 || hs == 0xae || hs == 0x303d || hs == 0x3030 || hs == 0x2b55 || hs == 0x2b1c || hs == 0x2b1b || hs == 0x2b50) {
                                        returnValue = YES;
                                    }
                                }
                            }];
    
    return returnValue;
}

#pragma mark - Public Function
//+ (BOOL)predicate:(NSString *)pattern string:(NSString *)string
//{
//    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
//    BOOL isMatch = [pred evaluateWithObject:string];
//    return isMatch;
//}
+ (BOOL)predicate:(NSString *)pattern string:(NSString *)string
{
    NSRegularExpression *regex = [[NSRegularExpression alloc]initWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    NSArray *sorts = [regex matchesInString:string options:NSMatchingReportProgress range:NSMakeRange(0, string.length)];
    return sorts.count > 0 ? YES : NO;
}

/**
 银行卡验证
 */
+ (BOOL)isBankNo:(NSString *)bankNo {
    NSString *pattern = @"^[1-9][0-9]{14,18}$";
    return [self predicate:pattern string:bankNo];
}

+ (BOOL)IsIdentityCard:(NSString *)identityCard
{
    if (identityCard==nil||identityCard.length <= 0) {
        return NO;
    }
    return YES;
}

@end
