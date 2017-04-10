//
//  Team.h
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Coach;
@class Player;
@interface Team : NSObject

@property (copy, nonatomic) NSString *flag;
@property (copy, nonatomic) NSString *summary;

@property (assign, nonatomic) NSInteger date;
@property (assign, nonatomic) NSInteger teamId;

@property (strong, nonatomic) Coach *coach;
@property (strong, nonatomic) NSArray<Player *> *players;

+ (instancetype)instanceWithId:(NSUInteger)ID;
@end
