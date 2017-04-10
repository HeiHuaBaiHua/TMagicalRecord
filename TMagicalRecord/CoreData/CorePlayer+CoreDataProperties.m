//
//  CorePlayer+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CorePlayer+CoreDataProperties.h"

@implementation CorePlayer (CoreDataProperties)

+ (NSFetchRequest<CorePlayer *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CorePlayer"];
}

@dynamic age;
@dynamic name;
@dynamic number;
@dynamic userId;
@dynamic salary;
@dynamic sex;
@dynamic role;
@dynamic team;

@end
