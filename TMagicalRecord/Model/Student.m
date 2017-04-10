//
//  Student.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/4/9.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (instancetype)instanceWithId:(NSUInteger)ID {
    Student *student = [super instanceWithId:ID];
    student.salary = 5 + ID + 0.01;
    return student;
}

#pragma mark - CoreData
//XCode8以后 系统自动生成的CoreData类有时候通过NSClassFromString是取不到的 这种情况下要设置一下CoreData右侧的CodeGen为Manual/None取消自动生成 自己来生成对应的CoreData类 或者 不要用NSClassFromString直接Import算了
+ (Class)managedObjectClass {
    return NSClassFromString(@"CoreStudent");
}

+ (NSDictionary *)containerPropertyKeypathsForCoreData {
    return @{@"teachers" : @"Teacher"};
}

+ (NSDictionary *)oneToManyRelationship {
    return @{@"teachers" : @"students"};
}

@end
