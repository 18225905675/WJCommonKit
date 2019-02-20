//
//  BaseModel.m
//  test
//
//  Created by 安徽软云 on 2019/1/31.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModelType

setClassMethod(BaseModelType *, NSInteger, type, setType) {
    weak(self, weakSelf);
    return ^BaseModelType *(NSInteger type){
        weakSelf.type = type;
        return weakSelf;
    };
}

@end

@implementation BaseModel

setClassMethod(BaseModel *, NSString *, title, setTitle) {
    weak(self, weakSelf);
    return [self setBase:^BaseModel *(NSString *title) {
        weakSelf.title = title;
        return weakSelf;
    }];
}

setClassMethod(BaseModel *, NSInteger, type, setType) {
    return ^BaseModel *(NSInteger type) {
        self.type = type;
        return self;
    };
}

setClassMethod(BaseModel *, NSString *, des, setDes) {
    weak(self, weakSelf);
    return [self setBase:^BaseModel *(NSString *des) {
        weakSelf.des = des;
        return weakSelf;
    }];
}

setClassMethod(BaseModel *, UIFont *, titleFont, setTitleFont) {
    weak(self, weakSelf);
    return [self setBase:^BaseModel *(UIFont *titleFont) {
        weakSelf.titleFont = titleFont;
        return weakSelf;
    }];
}

setClassMethod(BaseModel *, UIFont *, desFont, setDesFont) {
    weak(self, weakSelf);
    return [self setBase:^BaseModel *(UIFont *desFont) {
        weakSelf.desFont = desFont;
        return weakSelf;
    }];
}

setClassMethod(BaseModel *, UIColor *, titleColor, setTitleColor) {
    weak(self, weakSelf);
    return [self setBase:^BaseModel *(UIColor *color) {
        weakSelf.titleColor = color;
        return weakSelf;
    }];
}

setClassMethod(BaseModel *, UIColor *, desColor, setDesColor) {
    weak(self, weakSelf);
    return [self setBase:^BaseModel *(UIColor *color) {
        weakSelf.desColor = color;
        return weakSelf;
    }];
}

setClassMethod(BaseModel *, SEL, selector, setSelector) {
    return ^BaseModel *(SEL selector) {
        self.selector = selector;
        return self;
    };
}

setClassMethod(BaseModel *, NSString *, imageName, setImageName) {
    weak(self, weakSelf);
    return [self setBase:^BaseModel *(NSString *imageName) {
        weakSelf.imageName = imageName;
        return weakSelf;
    }];
}

- (BaseModel *(^)(id value))setBase:(BaseModel *(^)(id value))block {
    return ^BaseModel *(id obj) {
        return block(obj);
    };
}

@end
