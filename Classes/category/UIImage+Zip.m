//
//  UIImage+Zip.m
//  tank
//
//  Created by 安徽软云 on 2019/2/20.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#import "UIImage+Zip.h"

@implementation UIImage (Zip)

+ (UIImage *)clipImage:(UIImage *)image size:(CGSize)size {
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, image.size.height * 1.f / image.size.width * size.width)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

+ (NSData *)zipImage:(UIImage *)image {
    NSData *data = UIImageJPEGRepresentation(image, 0.6);
    return data;
}

@end
