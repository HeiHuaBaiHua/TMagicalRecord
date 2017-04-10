//
//  CoreTicket+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreTicket+CoreDataProperties.h"

@implementation CoreTicket (CoreDataProperties)

+ (NSFetchRequest<CoreTicket *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CoreTicket"];
}

@dynamic ticketId;
@dynamic price;
@dynamic date;

@end
