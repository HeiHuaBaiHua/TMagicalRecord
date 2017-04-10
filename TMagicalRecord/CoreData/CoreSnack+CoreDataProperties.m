//
//  CoreSnack+CoreDataProperties.m
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreSnack+CoreDataProperties.h"

@implementation CoreSnack (CoreDataProperties)

+ (NSFetchRequest<CoreSnack *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"CoreSnack"];
}

@dynamic taste;
@dynamic price;
@dynamic snackId;
@dynamic size;
@dynamic name;

@end
