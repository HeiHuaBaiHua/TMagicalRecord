//
//  CoreWorker+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreWorker+CoreDataProperties.h"

@implementation CoreWorker (CoreDataProperties)

+ (NSFetchRequest<CoreWorker *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CoreWorker"];
}

@dynamic age;
@dynamic name;
@dynamic salary;
@dynamic sex;
@dynamic userId;
@dynamic snacks;
@dynamic ticket;
@dynamic projects;

@end
