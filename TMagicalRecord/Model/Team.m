//
//  Team.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Team.h"

@implementation Team

+ (instancetype)instanceWithId:(NSUInteger)ID {
    
    Team *team = [Team new];
    team.teamId = ID;
    team.flag = [NSString stringWithFormat:@"flag%ld", ID];
    team.summary = [NSString stringWithFormat:@"summary%ld", ID];
    team.date = [[NSDate date] timeIntervalSince1970];
    return team;
}

#pragma mark - CoreData
//XCode8以后 系统自动生成的CoreData类有时候通过NSClassFromString是取不到的 这种情况下要设置一下CoreData右侧的CodeGen为Manual/None取消自动生成 自己来生成对应的CoreData类 或者 不要用NSClassFromString直接Import算了
+ (Class)managedObjectClass {
    return NSClassFromString(@"CoreTeam");
}

+ (NSDictionary *)primaryKeys {
    return @{@"teamId" : @"teamId"};
}

+ (NSDictionary *)containerPropertyKeypathsForCoreData {
    return @{@"players" : @"Player"};
}

+ (NSDictionary *)oneToOneRelationship {
    return @{@"coach" : @"team"};
}

+ (NSDictionary *)oneToManyRelationship {
    return @{@"players" : @"team"};
}

@end
