//  SyncGET
//
//  Created by 黎跃春 on 14-10-7.
//  Copyright (c) 2014年 黎跃春. All rights reserved.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)

- (NSString *)URLEncodedString
{
    NSString *result = [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    
    return result;
}

- (NSString*)URLDecodedString
{
    return [self stringByRemovingPercentEncoding];
}

@end
