//
//  ALDownloadFile.h
//  JSPatchDemo
//
//  Created by aoliday on 16/5/19.
//  Copyright © 2016年 aoliday. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ALJSPatchDownloadFile : UIView

+ (void)downloadUrl:(NSURL *)downloadURL
  cacheURLComponent:(NSString *)components
    completionBlock:(void (^)(NSURLResponse *response, NSURL *filePath, NSError *error))completionBlock;

@end

