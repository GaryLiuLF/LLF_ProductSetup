//
//  ViewController.m
//  LLF_ProjectSetup
//
//  Created by Apple on 16/12/5.
//  Copyright © 2016年 LLF. All rights reserved.
//

#import "ViewController.h"
#import "LLFHelpClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    NSLog(@"%@",[LLFHelpClass devicePlatformsString]);
    NSLog(@"%@",[LLFHelpClass deviceString]);
    
    NSString *str = @"iPhone 6 (A1549/A1586)";
    CGFloat width = [LLFHelpClass calculateSizeWithContent:str maxSize:CGSizeMake(20, MAXFLOAT) fint:15.0];
    CGFloat height = [LLFHelpClass calculateSizeWithContent:str maxSize:CGSizeMake(MAXFLOAT, 20) fint:15.0];
    
    UILabel *lab1 = [[UILabel alloc]init];
    lab1.frame = CGRectMake(10, 20, width, 20);
    lab1.backgroundColor = [UIColor lightTextColor];
    lab1.textColor = [UIColor redColor];
    lab1.text = str;
    [self.view addSubview:lab1];
    
    UILabel *lab2 = [[UILabel alloc]init];
    lab2.frame = CGRectMake(10, 300, 20, height);
    lab2.backgroundColor = [UIColor lightTextColor];
    lab2.textColor = [UIColor redColor];
    lab2.text = str;
    lab2.numberOfLines = 0;
    [self.view addSubview:lab2];
}




@end
