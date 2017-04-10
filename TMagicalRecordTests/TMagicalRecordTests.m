//
//  TMagicalRecordTests.m
//  TMagicalRecordTests
//
//  Created by 黑花白花 on 2017/3/1.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSObject+CoreDataExtension.h"

#import "Person.h"

@interface TMagicalRecordTests : XCTestCase

@end

@implementation TMagicalRecordTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    
    NSMutableArray *mArr = [NSMutableArray array];
//    for (int i = 0; i < 10000; i++) {
//        
//        Person *person = [Person new];
//        person.sex = i % 2;
//        person.age = i + 10;
//        person.userId = i;
//        person.qq = [NSString stringWithFormat:@"QQ%d", i];
//        person.name = [NSString stringWithFormat:@"name%d", i];
//        person.email = [NSString stringWithFormat:@"email%d", i];
//        person.summary = [NSString stringWithFormat:@"summary%d", i];
//        person.phoneNumber= [NSString stringWithFormat:@"phoneNumber%d", i];
//        [mArr addObject:person];
//    }
    [self measureBlock:^{
        
//        [Person saveObjects:mArr checkByPredicate:[HHPredicate predicateWithEqualProperties:nil containProperties:@[@"userId"]]];
        [Person findAll];
    }];
}

@end
