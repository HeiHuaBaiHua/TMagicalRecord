//
//  CoreStudent+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/4/9.
//
//

#import "CoreStudent+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreStudent (CoreDataProperties)

+ (NSFetchRequest<CoreStudent *> *)fetchRequest;

@property (nonatomic) int64_t age;
@property (nonatomic) int64_t sex;
@property (nonatomic) int64_t userId;
@property (nullable, nonatomic, copy) NSNumber *salary;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<CoreTeacher *> *teachers;

@end

@interface CoreStudent (CoreDataGeneratedAccessors)

- (void)addTeachersObject:(CoreTeacher *)value;
- (void)removeTeachersObject:(CoreTeacher *)value;
- (void)addTeachers:(NSSet<CoreTeacher *> *)values;
- (void)removeTeachers:(NSSet<CoreTeacher *> *)values;

@end

NS_ASSUME_NONNULL_END
