//
//  CoreTicket+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreTicket+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreTicket (CoreDataProperties)

+ (NSFetchRequest<CoreTicket *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSNumber *ticketId;
@property (nullable, nonatomic, copy) NSNumber *price;
@property (nullable, nonatomic, copy) NSDate *date;

@end

NS_ASSUME_NONNULL_END
