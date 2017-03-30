//
//  UIButton+Extension.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UIButton+Extension.h"
#import "UIImage+Extension.h"
#import <objc/runtime.h>

static void * touchKey = &touchKey;

@implementation UIButton (Extension)

+ (UIButton *)init:(void (^)(UIButtonMaker * make))block {
    
    return [self initWithType:UIButtonTypeSystem frame:CGRectZero maker:block];
}

+ (UIButton *)initWithType:(UIButtonType)type
                     frame: (CGRect)aframe
                     maker:(void (^)(UIButtonMaker *))block {
    
    UIButtonMaker * instance = [[UIButtonMaker alloc] init];
    instance.resultButton = [UIButton buttonWithType:type];
    [instance.resultButton setFrame:aframe];
    block(instance);
    return instance.resultButton;
}

+ (UIButton *)initWithFrame:(CGRect)aframe
                      maker:(void (^)(UIButtonMaker *))block {
    return [self initWithType:UIButtonTypeSystem frame:aframe maker:block];
}

- (void (^)(TouchBlock))touchUpInside {
    
    return ^(TouchBlock block) {
        
        objc_setAssociatedObject(self, touchKey, block, OBJC_ASSOCIATION_COPY_NONATOMIC);
        [self addTarget:self action:@selector(touchUpInSide:) forControlEvents:UIControlEventTouchUpInside];
        return;
    };
}


- (void)touchUpInSide:(UIButton *)btn{
    
    TouchBlock block = objc_getAssociatedObject(self, touchKey);
    if (block) {
        block();
    }
}

@end

@implementation UIButtonMaker
{
    
    NSString * _title;
    UIColor * _titleColor;
    UIImage * _backgroundImage;
    UIImage * _iconImage;
}

- (UIButtonMaker *(^)(UIFont *))setFont {
    
    return ^UIButtonMaker * (UIFont * font) {
      
        [self.resultButton.titleLabel setFont:font];
        return self;
    };
}

- (UIButtonMaker *(^)(CGRect))frame {
    
    return ^UIButtonMaker * (CGRect rect) {
        
        [self.resultButton setFrame:rect];
        return self;
    };
}

- (UIButtonMaker *(^)(NSString *))setTitle {
    
    return ^UIButtonMaker * (NSString * title) {
        
        _title = title;
        return self;
    };
}

- (UIButtonMaker *(^)(UIColor *))setTitleColor {
   
    return ^UIButtonMaker * (UIColor * color) {
        
        _titleColor = color;
        return self;
    };
}

- (UIButtonMaker *(^)(UIControlState))forState {
    
    return ^UIButtonMaker * (UIControlState state) {
        
        if (_title) {
            [self.resultButton setTitle:_title forState:state];
            _title = nil;
        }
        else {
            assert(@"SetTitle or Color need for state");
        }
        
        if (_titleColor) {
            [self.resultButton setTitleColor:_titleColor forState:state];
            _titleColor = nil;
        }
        
        if (_backgroundImage) {
            [self.resultButton setBackgroundImage:_backgroundImage forState:state];
            _backgroundImage = nil;
        }
        
        if (_iconImage) {
            [self.resultButton setImage:_iconImage forState:state];
            _iconImage = nil;
        }
        
        return self;
    };
}

- (UIButtonMaker *(^)(UIImage *))setImage {
    
    return ^UIButtonMaker * (UIImage * image) {
        
        _iconImage = image;
        return self;
    };
}

- (UIButtonMaker *(^)(UIImage *))setBackgroundImage {
    
    return  ^UIButtonMaker * (UIImage * image) {
        _backgroundImage = image;
        return  self;
    };
}

- (UIButtonMaker *(^)(UIColor *))setBackgroundColor {
    
    return  ^UIButtonMaker * (UIColor * color) {
        
        _backgroundImage = UIImage.withColor(color);
        return  self;
    };
}

- (UIButtonMaker *(^)(CGFloat))setCornerRadius {
    
    return  ^UIButtonMaker * (CGFloat force) {
      
        if (!self.resultButton.layer.masksToBounds) {
            self.resultButton.layer.masksToBounds = true;
        }
        self.resultButton.layer.cornerRadius = force;
        return self;
    };
}

- (UIButtonMaker *(^)(CGFloat))setBorderWidth {
    
    return  ^UIButtonMaker * (CGFloat force) {
        
        if (!self.resultButton.layer.masksToBounds) {
            self.resultButton.layer.masksToBounds = true;
        }
        self.resultButton.layer.borderWidth = force;
        return self;
    };
}

- (UIButtonMaker *(^)(UIColor *))setBorderColor {
    
    return ^UIButtonMaker * (UIColor * color) {
       
        if (!self.resultButton.layer.masksToBounds) {
            self.resultButton.layer.masksToBounds = true;
        }
        self.resultButton.layer.borderColor = color.CGColor;
        return self;
    };
}

@end

