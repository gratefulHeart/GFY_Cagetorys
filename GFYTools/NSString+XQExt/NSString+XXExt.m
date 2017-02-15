//
//  NSString+XQExt.m
//  HBLive
//
//  Created by xx on 16/1/19.
//  Copyright © 2016年 haibian. All rights reserved.
//

#import "NSString+XXExt.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (XXExt)
- (float) heightWithFont: (UIFont *) font withinWidth: (float) width
{
    CGRect textRect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                         options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                      attributes:@{NSFontAttributeName:font}
                                         context:nil];
    
    return ceil(textRect.size.height);
}

- (float) widthWithFont: (UIFont *) font
{
    CGRect textRect = [self boundingRectWithSize:CGSizeMake(MAXFLOAT, font.pointSize)
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:@{NSFontAttributeName:font}
                                         context:nil];
    
    return ceil(textRect.size.width);
}

- (NSString *)md5
{
    const char *cStr = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, strlen(cStr), digest);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    return output;
}

//- (NSString *)URLEncodedString
//{
//    NSString *encodedString = (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,(CFStringRef)self,(CFStringRef)@"!$&'()*+,-./:;=?@_~%#[]",NULL,kCFStringEncodingUTF8));
//    return encodedString;
//}
@end
