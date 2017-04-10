//
//  Snack.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Snack.h"

@implementation Snack

+ (instancetype)instanceWithId:(NSUInteger)ID {
    
    Snack *snack = [Snack new];
    snack.snackId = ID;
    snack.name = [NSString stringWithFormat:@"snack%ld", ID];
    snack.taste = [NSString stringWithFormat:@"taste%ld", ID];
    snack.size = ID + 0.11;
    snack.price = ID + 0.54;
    return snack;
}

#pragma mark - CoreData

+ (Class)managedObjectClass {
    return NSClassFromString(@"CoreSnack");
}

+ (NSDictionary *)primaryKeys {
    return @{@"snackId" : @"snackId"};
}

@end
