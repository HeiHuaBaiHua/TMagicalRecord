//
//  CoreTeam+CoreDataProperties.h
//  
//
//  Created by 黑花白花 on 2017/3/18.
//
//

#import "CoreTeam+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface CoreTeam (CoreDataProperties)

+ (NSFetchRequest<CoreTeam *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSNumber *teamId;
@property (nullable, nonatomic, copy) NSString *summary;
@property (nullable, nonatomic, copy) NSString *flag;
@property (nullable, nonatomic, copy) NSNumber *date;
@property (nullable, nonatomic, retain) CoreCoach *coach;
@property (nullable, nonatomic, retain) NSSet<CorePlayer *> *players;

@end

@interface CoreTeam (CoreDataGeneratedAccessors)

- (void)addPlayersObject:(CorePlayer *)value;
- (void)removePlayersObject:(CorePlayer *)value;
- (void)addPlayers:(NSSet<CorePlayer *> *)values;
- (void)removePlayers:(NSSet<CorePlayer *> *)values;

@end

NS_ASSUME_NONNULL_END
