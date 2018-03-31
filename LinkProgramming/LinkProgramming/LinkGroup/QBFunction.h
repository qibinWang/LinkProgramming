//
//  QBFunction.h
//  LinkProgramming
//
//  Created by wangqibin on 2018/3/31.
//  Copyright © 2018年 wangqibin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QBFunction : NSObject

+(instancetype)shareInstance;

//无返回 只能单个调用
-(void(^)(NSString *foodName))eat;

-(QBFunction *(^)(NSString *sportName,NSString *firend))play;

-(QBFunction *(^)(NSString *time))sleep;

@end
