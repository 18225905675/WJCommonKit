//
//  commonDefine.h
//  test
//
//  Created by 安徽软云 on 2019/1/31.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#ifndef commonDefine_h
#define commonDefine_h

/** 弱引用 */
#define weak(class,weakClass) __weak typeof(class) weakClass = class;

/**

 @param ReturnClass 返回类的类型
 @param valueClass 传入参数的类型
 @param value 传入参数的值
 @param method 方法名称
 */
#define setClassMethod(ReturnClass, valueClass, value, method)  - (ReturnClass(^)(valueClass value))method

#endif /* commonDefine_h */
