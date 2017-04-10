//
//  CoreSnack+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreSnack+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreSnack (CoreDataProperties)

+ (NSFetchRequest<CoreSnack *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *taste;
@property (nullable, nonatomic, copy) NSNumber *price;
@property (nullable, nonatomic, copy) NSNumber *snackId;
@property (nullable, nonatomic, copy) NSNumber *size;
@property (nullable, nonatomic, copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
