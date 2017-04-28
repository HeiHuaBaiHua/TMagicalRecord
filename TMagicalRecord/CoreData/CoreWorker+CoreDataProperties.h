//
//  CoreWorker+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreWorker+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreWorker (CoreDataProperties)

+ (NSFetchRequest<CoreWorker *> *)fetchRequest;

@property (nonatomic) int64_t age;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSNumber *salary;
@property (nullable, nonatomic, copy) NSString *projects;
@property (nonatomic) int64_t sex;
@property (nonatomic) int64_t userId;
@property (nullable, nonatomic, retain) NSSet<CoreSnack *> *snacks;
@property (nullable, nonatomic, retain) CoreTicket *ticket;

@end

@interface CoreWorker (CoreDataGeneratedAccessors)

- (void)addSnacksObject:(CoreSnack *)value;
- (void)removeSnacksObject:(CoreSnack *)value;
- (void)addSnacks:(NSSet<CoreSnack *> *)values;
- (void)removeSnacks:(NSSet<CoreSnack *> *)values;

@end

NS_ASSUME_NONNULL_END
