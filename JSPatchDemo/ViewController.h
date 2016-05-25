//
//  ViewController.h
//  JSPatchDemo
//
//  Created by aoliday on 10/15/15.
//  Copyright (c) 2015 aoliday. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIImage *(^ DEMOBlock)(NSNumber *number) ;

@interface ViewController : UIViewController {
    
    DEMOBlock _block;
}

@property (nonatomic,strong)NSDictionary *dic;

@property (nonatomic,assign)BOOL isChanged;

@property (nonatomic,strong,readonly) NSNumber *number;

- (void)testFunction:(UIImage * (^)(NSNumber *number))block;

@end

