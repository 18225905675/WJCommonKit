//
//  BaseModel.h
//  test
//
//  Created by 安徽软云 on 2019/1/31.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "commonDefine.h"

@interface BaseModelType : NSObject

@end

@interface BaseModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *des;
@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, strong) UIColor *desColor;
@property (nonatomic, assign) SEL selector;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, assign) NSInteger type;

setClassMethod(BaseModel *, NSString *, title, setTitle);
setClassMethod(BaseModel *, NSString *, des, setDes);
setClassMethod(BaseModel *, UIColor *, titleColor, setTitleColor);
setClassMethod(BaseModel *, UIColor *, desColor, setDesColor);
setClassMethod(BaseModel *, SEL, selector, setSelector);
setClassMethod(BaseModel *, NSString *, imageName, setImageName);

- (BaseModel *(^)(id value))setBase:(BaseModel *(^)(id value))block;

@end
