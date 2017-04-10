//
//  Teacher.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/4/9.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

+ (instancetype)instanceWithId:(NSUInteger)ID {
    Teacher *teacher = [super instanceWithId:ID];
    teacher.salary = 6000 + ID + 0.1;
    return teacher;
}

#pragma mark - CoreData
//XCode8以后 系统自动生成的CoreData类有时候通过NSClassFromString是取不到的 这种情况下要设置一下CoreData右侧的CodeGen为Manual/None取消自动生成 自己来生成对应的CoreData类 或者 不要用NSClassFromString直接Import算了
+ (Class)managedObjectClass {
    return NSClassFromString(@"CoreTeacher");
}

+ (NSDictionary *)containerPropertyKeypathsForCoreData {
    return @{@"students" : @"Student"};
}

+ (NSDictionary *)oneToManyRelationship {
    return @{@"students" : @"teachers"};
}


@end
