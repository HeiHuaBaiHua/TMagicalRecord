//
//  CoreTeam+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreTeam+CoreDataProperties.h"

@implementation CoreTeam (CoreDataProperties)

+ (NSFetchRequest<CoreTeam *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CoreTeam"];
}

@dynamic teamId;
@dynamic summary;
@dynamic flag;
@dynamic date;
@dynamic coach;
@dynamic players;

@end
