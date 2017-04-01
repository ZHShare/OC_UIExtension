//
//  UILabel+Extension.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ParentMaker.h"

@interface UILabelMaker : ParentMaker

- (UILabelMaker * (^)(NSString *))setText;
- (UILabelMaker * (^)(UIFont *))setFont;
- (UILabelMaker * (^)(UIColor *))setTextColor;
- (UILabelMaker * (^)(UIColor *))setShadowColor;

- (UILabelMaker * (^)(CGSize))setShadowOffset;
- (UILabelMaker * (^)(NSTextAlignment))setTextAlignment;
- (UILabelMaker * (^)(NSLineBreakMode))setLineBreakMode;
- (UILabelMaker * (^)(NSAttributedString *))setAttributedText;
- (UILabelMaker * (^)(UIColor *))setHighlightedTextColor;
- (UILabelMaker * (^)(BOOL))isUserInteractionEnabled;
- (UILabelMaker * (^)(BOOL))isEnabled;
- (UILabelMaker * (^)(NSInteger))numberOfLines;



@end
typedef void (^UILabelMakerBlock) (UILabelMaker * make);

@interface UILabel (Extension)

+ (UILabel * (^)(CGRect))initWithFrame;
- (UILabel * (^)(UILabelMakerBlock))maker;

+ (UILabel *)init:(void (^)(UILabelMaker * make))block;

+ (UILabel *)initWithFrame: (CGRect)aframe
                      maker:(void (^)(UILabelMaker * make))block;





@end
