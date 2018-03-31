//
//  ViewController.m
//  LinkProgramming
//
//  Created by wangqibin on 2018/3/31.
//  Copyright © 2018年 wangqibin. All rights reserved.
//

#import "ViewController.h"
#import "QBModel.h"
#import "QBCommon.h"
#import "QBFunction.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setModelParmasValue];
    [self doFunction];
}

//链式 属性赋值
-(void)setModelParmasValue{
    //设置单个
    QBInstance(QBModel).nameSet(@"Bob");
    
    //设置多个
    QBInstance(QBModel).addressSet(@"suZhou")
                       .numberSet(@"123321");
    
    //输出内容
    NSLog(@"Name is:%@",QBInstance(QBModel).name);
    NSLog(@"Address is:%@ \r Number is:%@",QBInstance(QBModel).address,QBInstance(QBModel).number);

}


//链式方法调用
-(void)doFunction{
    //单方法调用
    QBInstance(QBFunction).eat(@"apple");
    QBInstance(QBFunction).play(@"basketball",@"Bob");
    
    //多个方法调用
    QBInstance(QBFunction).play(@"football",@"qibin").sleep(@"9:00");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
