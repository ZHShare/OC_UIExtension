//
//  UIColor+Extension.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Extension)

+ (UIColor * (^)(NSString *))hex;
+ (UIColor * (^)(int r, int g, int b))rgb;

+ (UIColor * (^)())black;
+ (UIColor * (^)())darkGray;
+ (UIColor * (^)())lightGray;
+ (UIColor * (^)())white;
+ (UIColor * (^)())gray;
+ (UIColor * (^)())red;
+ (UIColor * (^)())green;
+ (UIColor * (^)())blue;
+ (UIColor * (^)())cyan;
+ (UIColor * (^)())yellow;
+ (UIColor * (^)())magenta;
+ (UIColor * (^)())orange;
+ (UIColor * (^)())purple;
+ (UIColor * (^)())brown;
+ (UIColor * (^)())clear;

@end
