//
//  UIColor+Extension.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UIColor+Extension.h"

@implementation UIColor (Extension)

+ (UIColor *(^)(NSString *))hex {
    
    return ^(NSString * hexString) {
    
        return [UIColor hexString:hexString];
    };
}

+ (UIColor *(^)(int, int, int))rgb {
   
    return ^(int r, int g, int b) {
        
        return [UIColor colorWithRed:(CGFloat)r/255.0 green:(CGFloat)g/255.0 blue:(CGFloat)b/255.0 alpha:1.0];
    };
}

+ (UIColor * (^)())black {
    
    return ^() {
        
        return [UIColor blackColor];
    };
    
}
+ (UIColor * (^)())darkGray {
    
    return ^() {
        
        return [UIColor darkGrayColor];
    };
    
}
+ (UIColor * (^)())lightGray {
    
    return ^() {
        
        return [UIColor lightGrayColor];
    };
    
}
+ (UIColor * (^)())white {
    
    return ^() {
        
        return [UIColor whiteColor];
    };
    
}
+ (UIColor * (^)())gray {
    
    return ^() {
        
        return [UIColor grayColor];
    };
    
}
+ (UIColor * (^)())red {
    
    return ^() {
        
        return [UIColor redColor];
    };
    
}
+ (UIColor * (^)())green {
    
    return ^() {
        
        return [UIColor greenColor];
    };
    
}
+ (UIColor * (^)())blue {
    
    return ^() {
        
        return [UIColor blueColor];
    };
    
}
+ (UIColor * (^)())cyan {
    
    return ^() {
        
        return [UIColor cyanColor];
    };
    
}
+ (UIColor * (^)())yellow {
    
    return ^() {
        
        return [UIColor yellowColor];
    };
    
}
+ (UIColor * (^)())magenta {
    
    return ^() {
        
        return [UIColor magentaColor];
    };
    
}
+ (UIColor * (^)())orange {
    
    return ^() {
        
        return [UIColor orangeColor];
    };
    
}
+ (UIColor * (^)())purple {
    
    return ^() {
        
        return [UIColor purpleColor];
    };
    
}
+ (UIColor * (^)())brown {
    
    return ^() {
        
        return [UIColor brownColor];
    };
    
}
+ (UIColor * (^)())clear {
    
    return ^() {
        
        return [UIColor clearColor];
    };
    
}







+ (UIColor *)hexString:(NSString *)aString {
    
    if (![aString containsString:@"#"] || aString.length != 7) {
        return [UIColor clearColor];
    }
    
    NSString *string = [aString substringFromIndex:1];//去掉#号
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    range.location = 0;
    /* 调用下面的方法处理字符串 */
    red = [self stringToInt:[string substringWithRange:range]];
    
    range.location = 2;
    green = [self stringToInt:[string substringWithRange:range]];
    range.location = 4;
    blue = [self stringToInt:[string substringWithRange:range]];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green / 255.0f) blue:(float)(blue / 255.0f) alpha:1.0f];
    
}

+ (int)stringToInt:(NSString *)string {
    
    unichar hex_char1 = [string characterAtIndex:0]; /* 两位16进制数中的第一位(高位*16) */
    int int_ch1;
    if (hex_char1 >= '0' && hex_char1 <= '9')
        int_ch1 = (hex_char1 - 48) * 16;   /* 0 的Ascll - 48 */
    else if (hex_char1 >= 'A' && hex_char1 <='F')
        int_ch1 = (hex_char1 - 55) * 16; /* A 的Ascll - 65 */
    else
        int_ch1 = (hex_char1 - 87) * 16; /* a 的Ascll - 97 */
    unichar hex_char2 = [string characterAtIndex:1]; /* 两位16进制数中的第二位(低位) */
    int int_ch2;
    if (hex_char2 >= '0' && hex_char2 <='9')
        int_ch2 = (hex_char2 - 48); /* 0 的Ascll - 48 */
    else if (hex_char1 >= 'A' && hex_char1 <= 'F')
        int_ch2 = hex_char2 - 55; /* A 的Ascll - 65 */
    else
        int_ch2 = hex_char2 - 87; /* a 的Ascll - 97 */
    return int_ch1+int_ch2;
}


@end
