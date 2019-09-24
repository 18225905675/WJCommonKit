//
//  NSString+TimeStamp.h
//  BusinessPlatform
//
//  Created by 合肥亿千年信息科技有限公司 on 2018/8/21.
//  Copyright © 2018年 合肥亿千年信息科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TimeStamp)

+ (NSString *)getCurrentTimeStamp;

+ (NSString *)timeWithTimeStamp:(NSString *)timeStamp;

@end
