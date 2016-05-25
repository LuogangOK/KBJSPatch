//
//  ALJSPatchFile.h
//  JSPatchDemo
//
//  Created by aoliday on 16/5/19.
//  Copyright © 2016年 aoliday. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifndef ALJSPatchFile
#define ALExecuteJSPatch  [ALJSPatchFile executeJSPatch:@"13243"]
#endif

@interface ALJSPatchFile : NSObject
//执行路径下的JS文件,secretCode是校对代码,保护程序安全性
+ (void)executeJSPatch:(NSString *)secretCode;
@end
