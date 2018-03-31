//
//  QBModel.h
//  LinkProgramming
//
//  Created by wangqibin on 2018/3/31.
//  Copyright © 2018年 wangqibin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QBCommon.h"
@interface QBModel : NSObject

+(instancetype)shareInstance;

//定义一些属性用于链式调用
//字符串
QBPropStatementAndFuncStatement(copy, QBModel, NSString *, name);
QBPropStatementAndFuncStatement(copy, QBModel, NSString *, address);
QBPropStatementAndFuncStatement(copy, QBModel, NSString *, number);

//布尔类型
QBPropStatementAndFuncStatement(assign, QBModel, BOOL, success);

//字典
QBPropStatementAndFuncStatement(strong, QBModel, NSDictionary *, userDict);

//.....等等
@end
