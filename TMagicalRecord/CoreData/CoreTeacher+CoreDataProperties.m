//
//  CoreTeacher+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/4/9.
//
//

#import "CoreTeacher+CoreDataProperties.h"

@implementation CoreTeacher (CoreDataProperties)

+ (NSFetchRequest<CoreTeacher *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CoreTeacher"];
}

@dynamic age;
@dynamic sex;
@dynamic userId;
@dynamic salary;
@dynamic name;
@dynamic students;

@end
