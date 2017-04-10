//
//  Coach.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Coach.h"

@implementation Coach

+ (instancetype)instanceWithId:(NSUInteger)ID {
    Coach *coach = [super instanceWithId:ID];
    coach.salary = 20000 + ID + 0.3;
    return coach;
}

#pragma mark - CoreData

+ (Class)managedObjectClass {
    return NSClassFromString(@"CoreCoach");
}

+ (NSDictionary *)oneToOneRelationship {
    return @{@"team" : @"coach"};
}

@end
