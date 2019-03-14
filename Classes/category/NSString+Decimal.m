//
//  NSString+Decimal.m
//  Shipping
//
//  Created by RuanYunKeji on 2018/1/11.
//  Copyright © 2018年 WuangZee. All rights reserved.
//

#import "NSString+Decimal.h"

@implementation NSString (Decimal)

+ (NSString *)decimalWithType:(DecimalType)type
                  onePrice:(NSString *)onePrice
                  twoPrice:(NSString *)twoPrice {
    onePrice = [NSString stringWithFormat:@"%@", onePrice];
    twoPrice = [NSString stringWithFormat:@"%@", twoPrice];
    if (onePrice.length == 0 || [onePrice containsString:@"null"]) {
        onePrice = @"0";
    }
    if (twoPrice.length == 0 || [twoPrice containsString:@"null"]) {
        twoPrice = @"0";
    }

    NSDecimalNumber *number1 = [NSDecimalNumber decimalNumberWithString:onePrice];
    NSDecimalNumber *number2 = [NSDecimalNumber decimalNumberWithString:twoPrice];
    switch (type) {
        case DecimalTypeAdd: {
            return [[number1 decimalNumberByAdding:number2] stringValue];
        }
            break;
        case DecimalTypeReduce: {
            return [[number1 decimalNumberBySubtracting:number2] stringValue];
        }
            break;
        case DecimalTypeMultiply: {
            return [[number1 decimalNumberByMultiplyingBy:number2] stringValue];
        }
            break;
        case DecimalTypeDivision: {
            return [[number1 decimalNumberByDividingBy:number2] stringValue];
        }
            break;
    }
}

@end
