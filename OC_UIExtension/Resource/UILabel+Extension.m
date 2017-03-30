//
//  UILabel+Extension.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)

- (void)formatter {
    
    NSMutableAttributedString * attributedStr = [[NSMutableAttributedString alloc] initWithString:self.text];
    
    NSRange lastRange = NSMakeRange(self.text.length-1, 1);
    
    [attributedStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:13] range:lastRange];
    
    self.attributedText = attributedStr;
}

@end
