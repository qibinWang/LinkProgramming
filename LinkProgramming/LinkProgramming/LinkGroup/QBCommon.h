//
//  QBCommon.h
//  LinkProgramming
//
//  Created by wangqibin on 2018/3/31.
//  Copyright © 2018年 wangqibin. All rights reserved.
//

#ifndef QBCommon_h
#define QBCommon_h

#define QBInstance(objectName) [objectName shareInstance]

#define QBPropStatementAndFuncStatement(propertyModifyWord, className, propertyPointerType, propertyName)                \
@property(nonatomic,propertyModifyWord)propertyPointerType  propertyName;                                               \
- (className * (^) (propertyPointerType propertyName)) propertyName##Set;

#define QBPropSetFuncImplementation(className, propertyPointerType, propertyName)                                       \
- (className * (^) (propertyPointerType propertyName))propertyName##Set{                                                \
return ^(propertyPointerType propertyName) {                                                                            \
self.propertyName = propertyName;                                                                                       \
return self;                                                                                                            \
};                                                                                                                      \
}

#endif /* QBCommon_h */
