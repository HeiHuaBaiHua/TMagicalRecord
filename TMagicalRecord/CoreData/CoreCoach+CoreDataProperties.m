//
//  CoreCoach+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreCoach+CoreDataProperties.h"

@implementation CoreCoach (CoreDataProperties)

+ (NSFetchRequest<CoreCoach *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CoreCoach"];
}

@dynamic age;
@dynamic name;
@dynamic sex;
@dynamic userId;
@dynamic salary;
@dynamic team;

@end
