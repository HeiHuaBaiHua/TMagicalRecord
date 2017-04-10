//
//  Worker.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/18.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "Worker.h"

@implementation Worker

+ (Class)managedObjectClass {
    return NSClassFromString(@"CoreWorker");
}

+ (NSDictionary *)containerPropertyKeypathsForCoreData {
    return @{@"snacks" : @"Snack"};
}

@end
