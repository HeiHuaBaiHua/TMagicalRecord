//
//  Person.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/14.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)instanceWithId:(NSUInteger)ID {
    
    Person *person = [self new];
    person.userId = ID;
    person.name = [NSString stringWithFormat:@"%@%ld", NSStringFromClass([self class]), ID];
    person.sex = ID % 2;
    person.salary = 5000 + ID + 0.5;
    person.age = arc4random() % 100;
    return person;
}

#pragma mark - CoreData

+ (NSDictionary *)primaryKeys {
    return @{@"userId" : @"userId"};
}

@end
