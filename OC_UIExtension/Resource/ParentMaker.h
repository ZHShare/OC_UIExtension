//
//  ParentMaker.h
//  OC_UIExtension
//
//  Created by YE on 2017/3/30.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ParentMaker : NSObject

@property (nonatomic, strong) id result;
- (instancetype)initWith: (id)obj;

- (ParentMaker * (^)(BOOL))isUserInteractionEnabled;
- (ParentMaker * (^)(CGRect))setFrame;
- (ParentMaker * (^)(CGFloat))setCornerRadius;
- (ParentMaker * (^)(CGFloat))setBorderWidth;
- (ParentMaker * (^)(UIColor *))setBorderColor;

@end
