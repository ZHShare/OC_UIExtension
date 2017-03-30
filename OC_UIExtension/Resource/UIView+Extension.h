//
//  UIView+Extension.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

- (void (^)(UIView *))addSubview;
- (void (^)(NSArray *))addSubviews;

@end
