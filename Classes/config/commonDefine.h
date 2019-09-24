//
//  commonDefine.h
//  test
//
//  Created by 安徽软云 on 2019/1/31.
//  Copyright © 2019 安徽软云科技. All rights reserved.
//

#ifndef commonDefine_h
#define commonDefine_h

/** 屏幕宽度 */
#define KSCREENW [UIScreen mainScreen].bounds.size.width
/** 屏幕高度 */
#define KSCREENH [UIScreen mainScreen].bounds.size.height

//适配文字大小
#define SYSTEMFONT(FONTSIZE)     [UIFont systemFontOfSize:FONTSIZE]
#define AUTOLAYOUTSYSTEMFONT_3X(x)   SYSTEMFONT((x) *([[UIScreen mainScreen] bounds].size.width/1242.f))
#define AUTOLAYOUTSYSTEMFONT_2X(x)   SYSTEMFONT((x) *([[UIScreen mainScreen] bounds].size.width/750.f))

/** 列表式适配。比例宽度计算。(No Use Masonry) */
#define AUTOLAYOUTWIDTH_3X(x) (x)*(KSCREENW/1242.f)
#define AUTOLAYOUTWIDTH_2X(x) (x)*(KSCREENW/750.f)

/** Constraint适配。横向上的比例偏移计算。(Use Masonry) */
#define KMAS_HORIZONTAL_3X(x) (x)/3.f
#define KMAS_HORIZONTAL_2X(x) (x)/2.f

/** Constraint适配。纵向上的比例偏移数据。(Use Masonry) */
#define KMAS_VERTICAL_3X(x) (x)/3.f
#define KMAS_VERTICAL_2X(x) (x)/2.f

#define KMAS_FONT_3X(x) [UIFont systemFontOfSize:(x)/3.f]
#define KMAS_FONT_2X(x) [UIFont systemFontOfSize:(x)/2.f]

#ifdef DEBUG
#define KLog(...) NSLog(__VA_ARGS__)
#else
#define KLog(...)
#endif

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
