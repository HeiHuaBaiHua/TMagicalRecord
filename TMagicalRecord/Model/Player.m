//
//  Player.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Player.h"

@implementation Player

+ (instancetype)instanceWithId:(NSUInteger)ID {
    Player *player = [super instanceWithId:ID];
    player.salary = 8000 + ID + 0.8;
    player.number = [NSString stringWithFormat:@"%ld", ID];
    player.role = [NSString stringWithFormat:@"role%ld", ID];
    return player;
}

#pragma mark - CoreData
//XCode8以后 系统自动生成的CoreData类有时候通过NSClassFromString是取不到的 这种情况下要设置一下CoreData右侧的CodeGen为Manual/None取消自动生成 自己来生成对应的CoreData类 或者 不要用NSClassFromString直接Import算了
+ (Class)managedObjectClass {
    return NSClassFromString(@"CorePlayer");
}

+ (NSDictionary *)oneToOneRelationship {
    return @{@"team" : @"players"};
}

@end
