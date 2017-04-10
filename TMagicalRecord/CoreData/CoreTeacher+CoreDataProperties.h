//
//  CoreTeacher+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/4/9.
//
//

#import "CoreTeacher+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreTeacher (CoreDataProperties)

+ (NSFetchRequest<CoreTeacher *> *)fetchRequest;

@property (nonatomic) int64_t age;
@property (nonatomic) int64_t sex;
@property (nonatomic) int64_t userId;
@property (nullable, nonatomic, copy) NSNumber *salary;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<CoreStudent *> *students;

@end

@interface CoreTeacher (CoreDataGeneratedAccessors)

- (void)addStudentsObject:(CoreStudent *)value;
- (void)removeStudentsObject:(CoreStudent *)value;
- (void)addStudents:(NSSet<CoreStudent *> *)values;
- (void)removeStudents:(NSSet<CoreStudent *> *)values;

@end

NS_ASSUME_NONNULL_END
