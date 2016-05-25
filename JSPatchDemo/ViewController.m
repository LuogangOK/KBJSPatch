//
//  ViewController.m
//  JSPatchDemo
//
//  Created by aoliday on 10/15/15.
//  Copyright (c) 2015 aoliday. All rights reserved.
//

#import "ViewController.h"

#import "NSObject+JSPatchExtension.h"

#import <AFNetworking/AFNetworking.h>

@interface ViewController () {
    
    NSInteger _firstIndex ;
}

@property (nonatomic,strong,readwrite) NSNumber *number;

@end

@implementation ViewController

- (void)loadView {
    
    [super loadView];
    
    _firstIndex = 1;
    _isChanged = NO;
    
    _dic = @{@"beta":@"1",@"alpha":@"2"};
    _number = @(123);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    NSLog(@"this is ViewController ViewWillAppear methods");
}

- (void)getPerson:(NSString *)name age:(NSInteger)age gender:(BOOL)gender {
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    
    [self viewWillAppear:YES];
    
    [self getPerson:@"Freeman" age:18 gender:YES];
    
    [self noParamsFunction];
    
    [self haveMultiParamsFunction:@"NSString" p2:[UIView new] p3:@(3.4) p4:[NSNull null]];
}

- (UIView *)changeSkin {
    
    self.view.backgroundColor = [UIColor grayColor];
    
    return self.view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)boardView
{
    UILabel *label = [UILabel new];
    label.text = @"3y42fbwe skjdhk";
    label.frame = CGRectMake(100, 100, 200, 200);
    label.backgroundColor = [UIColor grayColor];
    return label;
    return [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 320)];
}

@end
