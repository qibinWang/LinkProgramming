//
//  QBFunction.m
//  LinkProgramming
//
//  Created by wangqibin on 2018/3/31.
//  Copyright © 2018年 wangqibin. All rights reserved.
//

#import "QBFunction.h"

@implementation QBFunction

+(instancetype)shareInstance{
    static id  instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

-(void(^)(NSString *))eat{
    return ^(NSString *foodName){
        NSLog(@"Eating %@",foodName);
    };
}

-(QBFunction *(^)(NSString *,NSString *))play{
    return ^(NSString *sportName,NSString *firend){
        NSLog(@"play %@ with %@",sportName,firend);
        return self;
    };
}

-(QBFunction *(^)(NSString *))sleep{
    return ^(NSString *time){
        NSLog(@"sleep at:%@",time);
        return self;
    };
}

@end
