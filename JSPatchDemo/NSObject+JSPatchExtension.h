//
//  NSObject+JSPatchExtension.h
//  JSPatchDemo
//
//  Created by aoliday on 15/10/29.
//  Copyright (c) 2015年 aoliday. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NSObject (JSPatchExtension)

- (void)noParamsFunction;

- (void)haveMultiParamsFunction:(NSString *)p1 p2:(UIView *)p2 p3:(NSNumber *)p3 p4:(NSNull *)p4;

@end
