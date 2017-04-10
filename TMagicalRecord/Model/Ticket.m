//
//  Ticket.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Ticket.h"

@implementation Ticket

+ (instancetype)instanceWithId:(NSUInteger)ID {
    Ticket *ticket = [Ticket new];
    ticket.ticketId = ID;
    ticket.date = [NSDate date];
    ticket.price = ID + 0.05;
    return ticket;
}

#pragma mark - CoreData

+ (Class)managedObjectClass {
    return NSClassFromString(@"CoreTicket");
}

+ (NSDictionary *)primaryKeys {
    return @{@"ticketId" : @"ticketId"};
}

@end
