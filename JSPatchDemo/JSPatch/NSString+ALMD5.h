//
//  NSString+ALMD5.h
//  JSPatchDemo
//
//  Created by aoliday on 16/5/26.
//  Copyright © 2016年 aoliday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ALMD5)

+ (NSString *)md5HexDigest:(NSString*)input;

@end
