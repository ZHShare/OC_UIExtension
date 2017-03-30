//
//  UIButton+Extension.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^TouchBlock) ();

@interface UIButtonMaker : NSObject

@property (nonatomic, strong) UIButton * resultButton;

- (UIButtonMaker * (^)(NSString *))setTitle;
- (UIButtonMaker * (^)(UIControlState))forState;
- (UIButtonMaker * (^)(UIColor *))setTitleColor;
- (UIButtonMaker * (^)(CGRect))frame;
- (UIButtonMaker * (^)(UIImage *))setImage;
- (UIButtonMaker * (^)(UIImage *))setBackgroundImage;
- (UIButtonMaker * (^)(UIColor *))setBackgroundColor;
- (UIButtonMaker * (^)(UIFont *))setFont;
- (UIButtonMaker * (^)(CGFloat))setCornerRadius;
- (UIButtonMaker * (^)(CGFloat))setBorderWidth;
- (UIButtonMaker * (^)(UIColor *))setBorderColor;


@end

@interface UIButton (Extension)

+ (UIButton *)initWithType: (UIButtonType)type
                     frame: (CGRect)aframe
                     maker:(void (^)(UIButtonMaker * make))block;

+ (UIButton *)init:(void (^)(UIButtonMaker * make))block;

+ (UIButton *)initWithFrame: (CGRect)aframe
                      maker:(void (^)(UIButtonMaker * make))block;

- (void (^)(TouchBlock))touchUpInside;

//: (void (^)())block
@end
