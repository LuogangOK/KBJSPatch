//
//  ALFileManager.m
//  JSPatchDemo
//
//  Created by aoliday on 16/5/19.
//  Copyright © 2016年 aoliday. All rights reserved.
//

#import "ALFileManager.h"

@implementation ALFileManager


//获取Documents文件夹的路径
NSString *documentsPath(void) {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsdir = [paths objectAtIndex:0];
    return documentsdir;
}

//获取Libirary文件夹的路径
NSString *libirayPath(void) {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return paths[0];
}

//获取cache文件夹的路径
NSString *cachePath(void) {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    return paths[0];
}

//获取Temp文件夹路径
NSString *tempPath(void) {
    
    return NSTemporaryDirectory();
}

//返回cache下的一个文件目录,如果没有则创建.
+ (NSString *)cacheWithComponent:(NSString *)component {
    
    NSString * path = [cachePath() stringByAppendingPathComponent:component];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        
        NSError *error;
        [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&error];
        NSString *errorString = [NSString stringWithFormat:@"文件创建失败....%@",error];
        NSAssert(!error,errorString);
        
    }
    
    return path;
}

+ (BOOL)removePath:(NSString *)path {
    
    if ([path hasPrefix:@"file:///"]) {
        
        path = [path substringFromIndex:7];
    }
    BOOL removed = NO;
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
        
        removed = YES;
    }else {
        
        NSError *error;
        removed = [[NSFileManager defaultManager] removeItemAtPath:path error:&error];
        NSString *errorString = [NSString stringWithFormat:@"文件删除失败....%@",error];
        NSAssert(!error,errorString);
    }
    
    return removed;
}

//创建文件,如果该路径下已经有该文件,则不创建,如果没有则创建,前提是path下面的路径(component)都已经创建
+ (ALCreateFileResult)createFileAtPath:(NSString *)path {
   
    ALCreateFileResult result = ALCreateFileFailed;
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        
        result = ALFileExist;
    }else {
        
        if ([[NSFileManager defaultManager] createFileAtPath:path contents:nil attributes:nil]) {
            
            result = ALCreateFileSuccessed;
        }
    }

    return result;
}

//读取path路径下的数据
+ (id)dataWithPath:(NSString *)path {
    
    return [NSData dataWithContentsOfFile:path];
}


@end
