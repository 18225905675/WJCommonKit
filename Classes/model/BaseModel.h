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

setClassMethod(__kindof BaseModel *, NSString *, title, setTitle);
setClassMethod(__kindof BaseModel *, NSString *, des, setDes);
setClassMethod(__kindof BaseModel *, UIFont *, titleFont, setTitleFont);
setClassMethod(__kindof BaseModel *, UIFont *, desFont, setDesFont);
setClassMethod(__kindof BaseModel *, UIColor *, titleColor, setTitleColor);
setClassMethod(__kindof BaseModel *, UIColor *, desColor, setDesColor);
setClassMethod(__kindof BaseModel *, SEL, selector, setSelector);
setClassMethod(__kindof BaseModel *, NSString *, imageName, setImageName);
setClassMethod(__kindof BaseModel *, NSInteger, type, setType);
setClassMethod(__kindof BaseModel *, BOOL, hasLine, setHasLine);

- (BaseModel *(^)(id value))setBase:(BaseModel *(^)(id value))block;

@end
