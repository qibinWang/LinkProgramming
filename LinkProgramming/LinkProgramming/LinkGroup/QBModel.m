//
//  QBModel.m
//  LinkProgramming
//
//  Created by wangqibin on 2018/3/31.
//  Copyright © 2018年 wangqibin. All rights reserved.
//

#import "QBModel.h"

@implementation QBModel

+(instancetype)shareInstance{
    static id  instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}


//字符串
QBPropSetFuncImplementation(QBModel, NSString *, name);
QBPropSetFuncImplementation(QBModel, NSString *, address);
QBPropSetFuncImplementation(QBModel, NSString *, number);

//布尔类型
QBPropSetFuncImplementation(QBModel, BOOL, success);

//字典
QBPropSetFuncImplementation(QBModel, NSDictionary *, userDict);

@end
