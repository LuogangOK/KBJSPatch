//
//  ALFileManager.h
//  JSPatchDemo
//
//  Created by aoliday on 16/5/19.
//  Copyright © 2016年 aoliday. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ALFileManager : NSObject

//获取Documents文件夹的路径
FOUNDATION_EXPORT NSString *documentsPath(void);
//获取Libirary文件夹的路径
FOUNDATION_EXPORT NSString *libirayPath(void);
//获取cache文件夹的路径
FOUNDATION_EXPORT NSString *cachePath(void);
//获取Temp文件夹路径
FOUNDATION_EXPORT NSString *tempPath(void);

typedef NS_ENUM(NSInteger,ALCreateFileResult) {

    ALCreateFileFailed,
    ALCreateFileSuccessed,
    ALFileExist,
};

//返回cache下的一个文件目录,如果没有则创建.
+ (NSString *)cacheWithComponent:(NSString *)component;

//创建文件,如果该路径下已经有该文件,则不创建,如果没有则创建,前提是path下面的路径(component)都已经创建
+ (ALCreateFileResult)createFileAtPath:(NSString *)path;

//删除文件.
+ (BOOL)removePath:(NSString *)path;

@end
