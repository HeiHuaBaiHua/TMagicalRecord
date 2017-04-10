//
//  CoreCoach+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreCoach+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreCoach (CoreDataProperties)

+ (NSFetchRequest<CoreCoach *> *)fetchRequest;

@property (nonatomic) int64_t age;
@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) int64_t sex;
@property (nonatomic) int64_t userId;
@property (nullable, nonatomic, copy) NSNumber *salary;
@property (nullable, nonatomic, retain) CoreTeam *team;

@end

NS_ASSUME_NONNULL_END
