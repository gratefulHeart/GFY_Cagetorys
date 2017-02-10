//
//  ViewController.m
//  GFY_TestDemo
//
//  Created by gfy on 17/2/10.
//  Copyright © 2017年 gfy. All rights reserved.
//

#import "ViewController.h"
#import "NSString+XXExt.h"
#import "UIColor+XXExt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    NSString *string = @"abcdefghijklmn";
    NSString *stringMd5 = [string md5];
    NSLog(@"%@",stringMd5);
    
    
    UIColor *color = [UIColor colorWithHexString:@"#0F0F0F" alpha:1.0f];
    
    UILabel *l = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    l.text = stringMd5;
    [self.view addSubview:l];
    l.textColor = color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
