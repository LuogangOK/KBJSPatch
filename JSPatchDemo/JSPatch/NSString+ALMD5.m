//
//  NSString+ALMD5.m
//  JSPatchDemo
//
//  Created by aoliday on 16/5/26.
//  Copyright © 2016年 aoliday. All rights reserved.
//

#import "NSString+ALMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (ALMD5)

+ (NSString *)md5HexDigest:(NSString*)input {
    
    const char* str = [input UTF8String];
    
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(str, (CC_LONG)strlen(str), digest);
    
    NSMutableString *ret = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH*2];//
    
    for(int i = 0; i<CC_MD5_DIGEST_LENGTH; i++) {
    
        [ret appendFormat:@"%02X",digest];
    }
    return ret;
}

@end
