//
//  CorePlayer+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CorePlayer+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CorePlayer (CoreDataProperties)

+ (NSFetchRequest<CorePlayer *> *)fetchRequest;

@property (nonatomic) int64_t age;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *number;
@property (nonatomic) int64_t userId;
@property (nullable, nonatomic, copy) NSNumber *salary;
@property (nonatomic) int64_t sex;
@property (nullable, nonatomic, copy) NSString *role;
@property (nullable, nonatomic, retain) CoreTeam *team;

@end

NS_ASSUME_NONNULL_END
