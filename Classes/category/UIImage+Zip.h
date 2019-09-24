//
//  UIImage+Zip.h
//  tank
//
//  Created by 安徽软云 on 2019/2/20.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Zip)

+ (UIImage *)clipImage:(UIImage *)image size:(CGSize)size;

+ (NSData *)zipImage:(UIImage *)image;

@end
