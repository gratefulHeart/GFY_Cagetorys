//
//  UIColor+XQExt.h
//  CALayer
//
//  Created by xx on 16/1/5.
//  Copyright © 2016年 Haibian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (XXExt)

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

//UIColor 转UIImage
+ (UIImage*) imageWithColor: (UIColor*) color;

@end
