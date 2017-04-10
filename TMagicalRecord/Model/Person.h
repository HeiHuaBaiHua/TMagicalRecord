//
//  Person.h
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/14.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (copy, nonatomic) NSString *name;

@property (assign, nonatomic) float salary;
@property (assign, nonatomic) NSInteger sex;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) NSInteger userId;

+ (instancetype)instanceWithId:(NSUInteger)ID;

@end
