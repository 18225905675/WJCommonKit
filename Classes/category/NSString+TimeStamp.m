//
//  NSString+TimeStamp.m
//  BusinessPlatform
//
//  Created by 合肥亿千年信息科技有限公司 on 2018/8/21.
//  Copyright © 2018年 合肥亿千年信息科技有限公司. All rights reserved.
//

#import "NSString+TimeStamp.h"

@implementation NSString (TimeStamp)

+ (NSString *)getCurrentTimeStamp {
    NSDate *date = [NSDate date];
    NSTimeInterval time = [date timeIntervalSince1970];
    return [NSString stringWithFormat:@"%ld", (long)[[NSNumber numberWithDouble:time * 1000] integerValue]];
}

+ (NSString *)timeWithTimeStamp:(NSString *)timeStamp {
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeStamp.integerValue / 1000.0];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"MM-dd HH:mm";
    return [formatter stringFromDate:date];
}

@end
