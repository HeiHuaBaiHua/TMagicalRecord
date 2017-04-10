//
//  CoreStudent+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/4/9.
//
//

#import "CoreStudent+CoreDataProperties.h"

@implementation CoreStudent (CoreDataProperties)

+ (NSFetchRequest<CoreStudent *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CoreStudent"];
}

@dynamic age;
@dynamic sex;
@dynamic userId;
@dynamic salary;
@dynamic name;
@dynamic teachers;

@end
