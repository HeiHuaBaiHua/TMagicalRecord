//
//  Ticket.h
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ticket : NSObject

@property (assign, nonatomic) float price;
@property (assign, nonatomic) NSInteger ticketId;

@property (strong, nonatomic) NSDate *date;

+ (instancetype)instanceWithId:(NSUInteger)ID;
@end
