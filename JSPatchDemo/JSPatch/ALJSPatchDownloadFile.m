//
//  ALDownloadFile.m
//  JSPatchDemo
//
//  Created by aoliday on 16/5/19.
//  Copyright © 2016年 aoliday. All rights reserved.
//

#import "ALJSPatchDownloadFile.h"
#import <AFNetworking/AFNetworking.h>

@implementation ALJSPatchDownloadFile

+ (void)downloadUrl:(NSURL *)downloadURL
  cacheURLComponent:(NSString *)components
    completionBlock:(void (^)(NSURLResponse *response, NSURL *filePath, NSError *error))completionBlock {
    
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURL *URL = downloadURL;
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    
    NSURLSessionDownloadTask *downloadTask = [manager downloadTaskWithRequest:request progress:nil destination:^NSURL *(NSURL *targetPath, NSURLResponse *response) {
        NSURL *saveURL = [[NSFileManager defaultManager] URLForDirectory:NSCachesDirectory inDomain:NSUserDomainMask appropriateForURL:nil create:NO error:nil];
        [ALFileManager cacheWithComponent:components];
        saveURL = [saveURL URLByAppendingPathComponent:components];
        return [saveURL URLByAppendingPathComponent:[response suggestedFilename]];
        
    } completionHandler:^(NSURLResponse *response, NSURL *filePath, NSError *error) {
        
        NSLog(@"File downloaded to: %@", filePath);
        
        if (completionBlock) {
            
            completionBlock(response,filePath,error);
        }
    }];
    [downloadTask resume];
}
@end
