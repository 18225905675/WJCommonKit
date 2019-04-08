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

@property (nonatomic, assign) NSInteger type;
setClassMethod(BaseModelType *, NSInteger, type, setType);

@end

@interface BaseModel : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIFont *titleFont;
@property (nonatomic, strong) UIColor *titleColor;
@property (nonatomic, copy) NSString *des;
@property (nonatomic, strong) UIColor *desColor;
@property (nonatomic, strong) UIFont *desFont;
@property (nonatomic, assign) SEL selector;
@property (nonatomic, copy) NSString *imageName;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) BOOL hasLine;

setClassMethod(BaseModel *, NSString *, title, setTitle);
setClassMethod(BaseModel *, NSString *, des, setDes);
setClassMethod(BaseModel *, UIFont *, titleFont, setTitleFont);
setClassMethod(BaseModel *, UIFont *, desFont, setDesFont);
setClassMethod(BaseModel *, UIColor *, titleColor, setTitleColor);
setClassMethod(BaseModel *, UIColor *, desColor, setDesColor);
setClassMethod(BaseModel *, SEL, selector, setSelector);
setClassMethod(BaseModel *, NSString *, imageName, setImageName);
setClassMethod(BaseModel *, NSInteger, type, setType);
setClassMethod(BaseModel *, BOOL, hasLine, setHasLine);

- (BaseModel *(^)(id value))setBase:(BaseModel *(^)(id value))block;

@end
