//
//  ParentMaker.m
//  OC_UIExtension
//
//  Created by YE on 2017/3/30.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ParentMaker.h"

@implementation ParentMaker

- (instancetype)initWith: (id)obj {
    if (self = [super init]) {
        self.result = obj;
    }
    return self;
}

- (ParentMaker * (^)(BOOL))isUserInteractionEnabled {
    
    return ^ParentMaker * (BOOL is) {
        
        [(UIView *)self.result setUserInteractionEnabled:is];
        return self;
    };
}

- (ParentMaker *(^)(CGRect))setFrame {
    
    return ^ParentMaker * (CGRect rect) {
        
        [(UIView *)self.result setFrame:rect];
        return self;
    };
}

- (ParentMaker *(^)(CGFloat))setCornerRadius {
    
    return  ^ParentMaker * (CGFloat force) {
        
        if (!((UIView *)self.result).layer.masksToBounds) {
            ((UIView *)self.result).layer.masksToBounds = true;
        }
        ((UIView *)self.result).layer.cornerRadius = force;
        return self;
    };
}

- (ParentMaker *(^)(CGFloat))setBorderWidth {
    
    return  ^ParentMaker * (CGFloat force) {
        
        if (!((UIView *)self.result).layer.masksToBounds) {
            ((UIView *)self.result).layer.masksToBounds = true;
        }
        ((UIView *)self.result).layer.borderWidth = force;
        return self;
    };
}

- (ParentMaker *(^)(UIColor *))setBorderColor {
    
    return ^ParentMaker * (UIColor * color) {
        
        if (!((UIView *)self.result).layer.masksToBounds) {
            ((UIView *)self.result).layer.masksToBounds = true;
        }
        ((UIView *)self.result).layer.borderColor = color.CGColor;
        return self;
    };
}

@end
