//
//  ViewController.m
//  5工厂方法模式
//
//  Created by yifan on 15/8/12.
//  Copyright (c) 2015年 黄成都. All rights reserved.
//

#import "ViewController.h"
#import "HCDCalculate.h"
#import "HCDfactory.h"
#import "HCDCalculateAdd.h"
#import "HCDfactoryAdd.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //定义一个用于创建对象的接口，让子类决定实例化哪一个类。工厂方法使一个类的实例化延迟到其子类
    HCDfactory *factory = [[HCDfactoryAdd alloc] init];
    HCDfactory  *calculate = [factory createFactory];
    calculate.numberA = 10;
    calculate.numberB = 15;
    NSLog(@"结果是%f",[calculate calculate]);
    
    
    
}


@end
