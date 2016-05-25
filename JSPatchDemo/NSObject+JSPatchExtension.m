//
//  NSObject+JSPatchExtension.m
//  JSPatchDemo
//
//  Created by aoliday on 15/10/29.
//  Copyright (c) 2015年 aoliday. All rights reserved.
//

#import "NSObject+JSPatchExtension.h"

@implementation NSObject (JSPatchExtension)

- (void)noParamsFunction {
    
    NSLog(@"this methods is origin OC log.%@ ",NSStringFromSelector(_cmd));
}

- (void)haveMultiParamsFunction:(NSString *)p1 p2:(UIView *)p2 p3:(NSNumber *)p3 p4:(NSNull *)p4 {
    
    
    NSLog(@"this methods is origin OC log.%@ ",NSStringFromSelector(_cmd));
}

@end
