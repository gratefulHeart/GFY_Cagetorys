//
//  NSString+XQExt.h
//  HBLive
//
//  Created by xx on 16/1/19.
//  Copyright © 2016年 haibian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (XXExt)
- (float) heightWithFont: (UIFont *) font withinWidth: (float) width;
- (float) widthWithFont: (UIFont *) font;
- (NSString *)md5;
//- (NSString *)URLEncodedString;
@end
