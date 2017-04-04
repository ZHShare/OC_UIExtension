//
//  UILabel+Extension.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

+ (UILabel *(^)(UILabelMakerBlock))maker {
    
    return ^UILabel * (UILabelMakerBlock block) {
        
        UILabel * label = [[UILabel alloc] init];
        UILabelMaker * maker = [[UILabelMaker alloc] initWith:label];
        block(maker);
        return label;
    };
}

+ (UILabel *(^)(CGRect))initWithFrame {
    
    return ^UILabel * (CGRect rect) {
        UILabel * label = [[UILabel alloc] initWithFrame:rect];
        return label;
    };
}

- (UILabel *(^)(UILabelMakerBlock))maker {
    
    return ^UILabel * (UILabelMakerBlock block) {
        
        UILabelMaker * maker = [[UILabelMaker alloc] initWith:self];
        block(maker);
        return self;
    };
}

+ (UILabel *)init:(void (^)(UILabelMaker *))block {
    
    return [self initWithFrame:CGRectZero maker:block];
}

+ (UILabel *)initWithFrame:(CGRect)aframe maker:(void (^)(UILabelMaker *))block {
    
    UILabel * label = [[UILabel alloc] initWithFrame:aframe];
    UILabelMaker * maker = [[UILabelMaker alloc] initWith:label];
    block(maker);
    return maker.result;
}


- (void)formatter {
    
    NSMutableAttributedString * attributedStr = [[NSMutableAttributedString alloc] initWithString:self.text];
    
    NSRange lastRange = NSMakeRange(self.text.length-1, 1);
    
    [attributedStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:lastRange];
    
    self.attributedText = attributedStr;
}

@end

@implementation UILabelMaker
{
    UILabel * _label;
}

- (instancetype)initWith:(id)obj {
    
    if (self = [super initWith:obj]) {
        _label = self.result;
    }
    return self;
}

- (UILabelMaker * (^)(NSString *))setText {
    
    return ^UILabelMaker * (NSString * text) {
        
        [_label setText:text];
        return self;
    };
}
- (UILabelMaker * (^)(UIFont *))setFont {
    
    return ^UILabelMaker * (UIFont * font) {
      
        [_label setFont:font];
        return self;
    };
}
- (UILabelMaker * (^)(UIColor *))setTextColor {
    
    return ^UILabelMaker * (UIColor * color) {
        
        [_label setTextColor:color];
        return self;
    };
}
- (UILabelMaker * (^)(UIColor *))setShadowColor {
    
    return ^UILabelMaker * (UIColor * color) {
        
        [_label setShadowColor:color];
        return self;
    };
}

- (UILabelMaker * (^)(CGSize))setShadowOffset {
    
    return ^UILabelMaker * (CGSize size) {
        
        [_label setShadowOffset:size];
        return self;
    };
}
- (UILabelMaker * (^)(NSTextAlignment))setTextAlignment {
    
    return ^UILabelMaker * (NSTextAlignment alignment) {
        
        [_label setTextAlignment:alignment];
        return self;
    };
}
- (UILabelMaker * (^)(NSLineBreakMode))setLineBreakMode {
    
    return ^UILabelMaker * (NSLineBreakMode mode) {
        
        [_label setLineBreakMode:mode];
        return self;
    };
}
- (UILabelMaker * (^)(NSAttributedString *))setAttributedText {
    
    return ^UILabelMaker * (NSAttributedString * attributed) {
        
        [_label setAttributedText:attributed];
        return self;
    };
}
- (UILabelMaker * (^)(UIColor *))setHighlightedTextColor {
    
    return ^UILabelMaker * (UIColor * color) {
        
        [_label setHighlightedTextColor:color];
        return self;
    };
}
- (UILabelMaker * (^)(BOOL))isUserInteractionEnabled {
    
    return ^UILabelMaker * (BOOL is) {
        
        [_label setUserInteractionEnabled:is];
        return self;
    };
}
- (UILabelMaker * (^)(BOOL))isEnabled {
    
    return ^UILabelMaker * (BOOL is) {
        
        [_label setEnabled:is];
        return self;
    };
}
- (UILabelMaker * (^)(NSInteger))numberOfLines {
    
    return ^UILabelMaker * (NSInteger number) {
        
        [_label setNumberOfLines:number];
        return self;
    };
}


@end
