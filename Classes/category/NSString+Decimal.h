//
//  NSString+Decimal.h
//  Shipping
//
//  Created by RuanYunKeji on 2018/1/11.
//  Copyright © 2018年 WuangZee. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, DecimalType) {
    // 加
    DecimalTypeAdd,
    // 减
    DecimalTypeReduce,
    // 乘
    DecimalTypeMultiply,
    // 除
    DecimalTypeDivision
};

@interface NSString (Decimal)

+ (NSString *)decimalWithType:(DecimalType)type
                  onePrice:(NSString *)onePrice
                  twoPrice:(NSString *)twoPrice;

@end
