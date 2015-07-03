//
//  DHMethodSwizzling.m
//  HookClassMethods
//
//  Created by 小伍 on 15-7-3.
//  Copyright (c) 2015年 小伍. All rights reserved.
//

#import "DHMethodSwizzling.h"
#import <objc/runtime.h>
#import <UIKit/UIKit.h>
@implementation DHMethodSwizzling
+(void)load
{
   
    
    // hook 类方法
    Class class = object_getClass([UIColor class]);
    // 目标方法
    SEL selSystem = @selector(colorWithRed:green:blue:alpha:);
    // 自定义方法

    SEL selCustom = @selector(hook_colorWithRed:green:blue:alpha:);


    Method originalMethod = class_getClassMethod(class, selSystem);
    Method swizzledMethod = class_getClassMethod([self class], selCustom);
    
    
    IMP impSystem = method_getImplementation(originalMethod);
    IMP impCustom = method_getImplementation(swizzledMethod);

    class_addMethod(class, selCustom, impSystem, method_getTypeEncoding(originalMethod));

    class_replaceMethod(class, selSystem, impCustom, method_getTypeEncoding(originalMethod));
    


    
}


+ (UIColor *)hook_colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
    
    return [self hook_colorWithRed:0.3 green:0.5 blue:0.6 alpha:1];
}
+ (UIImage *)hook_imageNamed:(NSString * )name
{
    NSLog(@"before");
    return [self hook_imageNamed:@"1.jpg"];
}


@end

