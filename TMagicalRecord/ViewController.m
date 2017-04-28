//
//  ViewController.m
//  TMagicalRecord
//
//  Created by 黑花白花 on 2017/3/1.
//  Copyright © 2017年 黑花白花. All rights reserved.
//

#import "ViewController.h"

#import "Team.h"
#import "Snack.h"
#import "Coach.h"
#import "Ticket.h"
#import "Player.h"
#import "Worker.h"
#import "Student.h"
#import "Teacher.h"

#import "NSObject+LogAllProperties.h"
#import "NSObject+CoreDataExtension.h"

#define LogFunc NSLog(@"******************%s******************", __func__);

@interface ViewController ()

@property (strong, nonatomic) NSArray *xxx;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [Team deleteAllWithCompletionHandler:^{//CoreData关系这块比较烦 不能马上删马上存 要稍微等一小会儿
//        [Coach deleteAll];
//        [Player deleteAll];
//    }];
//    [Student deleteAllWithCompletionHandler:^{
//        [Teacher deleteAll];
//    }];
//    [Snack deleteAll];
//    [Ticket deleteAll];
//    [Worker deleteAll];
//    return;
    
//    [self makeSnack];
//    [self makeSnacks];

//    [self makeWorker];
//    [self makeWorkers];
    
//    [self makeTeam];
//
//    [self makeStudentsAndTeachers];
//
//    [self modifyWorker];
//
//    [self makeSnackOnOtherThread];
//    [self makeSnackOnOtherThread2];
}

- (void)makeSnack {
    Snack *snack = [Snack instanceWithId:1];
    [snack save];
    
    LogFunc
    [[Snack findFirstByAttribute:@"snackId" withValue:@1] log];
    LogFunc
}

- (void)makeSnacks {

    NSMutableArray *snacks = [NSMutableArray array];
    for (int i = 2; i < 10; i++) {
        [snacks addObject:[Snack instanceWithId:i]];
    }
    [Snack saveObjects:snacks];
    
    [Snack findAllSortedBy:@"snackId" ascending:YES withPredicate:[NSPredicate predicateWithFormat:@"snackId < 9"] completionHandler:^(NSArray *objects) {
        LogFunc
        
        [objects enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj log];
        }];
        
        LogFunc
    }];
}

- (void)makeWorker {
    
    Ticket *ticket = [Ticket instanceWithId:1];
    Worker *worker = [Worker instanceWithId:1];
    NSMutableArray *snacks = [NSMutableArray array];
    for (int i = 10; i < 19; i++) {
        [snacks addObject:[Snack instanceWithId:i]];
    }
    worker.snacks = snacks;
    worker.ticket = ticket;
    [worker saveWithCompletionHandler:^{
        
    }];
    
    [Worker findFirstByAttribute:@"userId" withValue:@1 completionHandler:^(Worker *object) {
        LogFunc
        
        [object log];
        [object.ticket log];
        [object.snacks enumerateObjectsUsingBlock:^(Snack * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj log];
        }];
        
        LogFunc
    }];
    
    NSLog(@"******************%s-[]******************", __func__);
    
    [[Ticket findFirstByAttribute:@"ticketId" withValue:@1] log];
    
    [[Snack findAllWithPredicate:[NSPredicate predicateWithFormat:@"snackId >= 10 && snackId < 19"]] enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj log];
    }];
    
    NSLog(@"******************%s-[]******************", __func__);
}

- (void)makeWorkers {
    
    NSMutableArray *workers = [NSMutableArray array];
    for (int i = 2; i < 10; i++) {
        
        Worker *worker = [Worker instanceWithId:i];
        Ticket *ticket = [Ticket instanceWithId:i];
        NSMutableArray *snacks = [NSMutableArray array];
        for (int j = i * 10; j < i * 10 + 3; j++) {
            [snacks addObject:[Snack instanceWithId:j]];
        }
        worker.snacks = snacks;
        worker.ticket = ticket;
        [workers addObject:worker];
    }
    [Worker saveObjects:workers];
    
    [Worker findAllWithPredicate:[NSPredicate predicateWithFormat:@"userId > 0"] completionHandler:^(NSArray *objects) {
        
        LogFunc
        [objects enumerateObjectsUsingBlock:^(Worker * _Nonnull object, NSUInteger idx, BOOL * _Nonnull stop) {
           
            [object log];
            [object.ticket log];
            [object.snacks enumerateObjectsUsingBlock:^(Snack * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [obj log];
            }];
        }];
        LogFunc
    }];
}

- (void)makeTeam {
    
    NSMutableArray *players = [NSMutableArray array];
    for (int i = 1; i < 4; i++) {
        [players addObject:[Player instanceWithId:i]];
    }
    Team *team = [Team instanceWithId:1];
    Coach *coach = [Coach instanceWithId:1];
    team.coach = coach;
    team.players = players;
    [team save];
    
    [Team findAllWithCompletionHandler:^(NSArray *objects) {
        
        LogFunc
        [objects enumerateObjectsUsingBlock:^(Team *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            NSLog(@"%p-%p", obj, obj.coach);
            
            [obj log];
//            [obj.coach log];
            [obj.players enumerateObjectsUsingBlock:^(Player * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [obj log];
            }];
        }];
        LogFunc
    }];
    
//    [Coach findAllWithCompletionHandler:^(NSArray *objects) {
//        
//        NSLog(@"******************%s-[Coach]******************", __func__);
//        [objects enumerateObjectsUsingBlock:^(Coach * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            NSLog(@"%p-%p", obj, obj.team);
//            
//            [obj log];
//            [obj.team log];
//        }];
//        NSLog(@"******************%s-[Coach]******************", __func__);
//    }];
    
    [Player findAllWithCompletionHandler:^(NSArray *objects) {
        
        NSLog(@"******************%s-[Player]******************", __func__);
        [objects enumerateObjectsUsingBlock:^(Player *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"%p-%p-%p", obj, obj.team, obj.team.players.firstObject);
            
            [obj log];
            [obj.team log];
        }];
//        [objects clearRelationship];
        NSLog(@"******************%s-[Player]******************", __func__);
    }];
}

- (void)makeStudentsAndTeachers {
    
    NSMutableArray *teachers = [NSMutableArray array];
    for (int i = 1; i < 3; i++) {
        [teachers addObject:[Teacher instanceWithId:i]];
    }

    NSMutableArray *students = [NSMutableArray array];
    for (int i = 1; i < 8; i++) {
        
        Student *student = [Student instanceWithId:i];
        student.teachers = teachers;
        [students addObject:student];
    }
    [Student saveObjects:students];
    
    [Teacher findAllWithCompletionHandler:^(NSArray *objects) {
        [objects enumerateObjectsUsingBlock:^(Teacher * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NSLog(@"******************%s-[Teacher]******************", __func__);
            NSLog(@"%p", obj);
            [obj log];
            [obj.students enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [obj log];
            }];
            NSLog(@"******************%s-[Teacher]******************", __func__);
        }];
        [objects clearRelationship];
    }];
    
//    [Student findAllWithCompletionHandler:^(NSArray *objects) {
//        [objects enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//            NSLog(@"******************%s-[Student]******************", __func__);
//            NSLog(@"%p", obj);
//            [obj log];
//            NSLog(@"******************%s-[Student]******************", __func__);
//        }];
//        [objects clearRelationship];
//    }];
}

- (void)modifyWorker {
    
    //这块儿就挨个注释着凑合看吧 我也比较懒
    NSInteger ID = 888;
    {//顺便存点东西
//        Ticket *ticket = [Ticket instanceWithId:ID];
//        Worker *worker = [Worker instanceWithId:ID];
//        worker.projects = @[@"项目1", @"项目2", @"项目x"];//worker.projects是数组 但是CoreWorker.projects是字符串
//        NSMutableArray *snacks = [NSMutableArray array];
//        for (int i = 800; i < 809; i++) {
//            [snacks addObject:[Snack instanceWithId:i]];
//        }
//        worker.snacks = snacks;
//        worker.ticket = ticket;
//        [worker saveWithCompletionHandler:nil];
//        
//        [Worker findFirstByAttribute:@"userId" withValue:@(ID) completionHandler:^(Worker *object) {
//            LogFunc
//            
//            [object log];
//            [object.ticket log];
//            [object.snacks enumerateObjectsUsingBlock:^(Snack * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                [obj log];
//            }];
//            
//            LogFunc
//        }];
//        return;
    }
    
    {//普通修改操作
        Worker *worker = [Worker instanceWithId:ID];
        worker.age = 111;
        worker.name = @"改";
        worker.salary = 1.11;
        worker.ticket = [Ticket instanceWithId:818];
        worker.snacks = @[[Snack instanceWithId:818]];
        worker.projects = @[@"项目0"];
        [worker save];
        
        NSLog(@"-----------------改-----------------");
        [Worker findFirstByAttribute:@"userId" withValue:@(ID) completionHandler:^(Worker *object) {
            
            [object log];
            [object.ticket log];
            [object.snacks enumerateObjectsUsingBlock:^(Snack * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [obj log];
            }];
        }];
        return;
    }
    
    {//无用的置空操作
//        Worker *worker = [Worker new];
//        worker.userId = ID;
//        worker.age = 0;
//        worker.name = nil;
//        worker.salary = 0;
//        worker.ticket = nil;
//        worker.snacks = nil;
//        worker.projects = nil;
//        [worker save];
//        
//        NSLog(@"-----------------无用置空-----------------");
//        [Worker findFirstByAttribute:@"userId" withValue:@(ID) completionHandler:^(Worker *object) {
//
//            [object log];
//            [object.ticket log];
//            [object.snacks enumerateObjectsUsingBlock:^(Snack * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//                [obj log];
//            }];
//        }];
//        return;
    }
    
    {//正确的置空操作
        Worker *worker = [Worker new];
        worker.userId = ID;
        worker.age = CDZero;
        worker.name = @"";
        worker.salary = CDZero;
        worker.ticket = [NSNull null];//单向的customObject
        worker.projects = @[];
        [worker save];
        
        [Ticket deleteAllMatchingPredicate:[NSPredicate predicateWithFormat:@"ticketId = %ld", ID]];
        [Snack deleteAllMatchingPredicate:[NSPredicate predicateWithFormat:@"snackId >= 800 && snackId < 809"]];
        
        NSLog(@"-----------------有用置空-----------------");
        [Worker findFirstByAttribute:@"userId" withValue:@(ID) completionHandler:^(Worker *object) {

            [object log];
            [object.ticket log];
            [object.snacks enumerateObjectsUsingBlock:^(Snack * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [obj log];
            }];
        }];
    }
}

- (void)makeSnackOnOtherThread {
    
    NSMutableArray *snacks = [NSMutableArray array];
    for (int i = 100; i < 109; i++) {
        [snacks addObject:[Snack instanceWithId:i]];
    }
    [Snack saveObjects:snacks];
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        NSArray *snacks = [Snack findAllSortedBy:@"snackId" ascending:YES withPredicate:[NSPredicate predicateWithFormat:@"snackId >= 100 && snackId < 109"]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
           
            LogFunc
            [snacks enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                [obj log];
            }];
            LogFunc
        });
    });
}

- (void)makeSnackOnOtherThread2 {
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
    
        NSMutableArray *snacks = [NSMutableArray array];
        for (int i = 110; i < 119; i++) {
            [snacks addObject:[Snack instanceWithId:i]];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [Snack saveObjects:snacks];
            
            dispatch_async(dispatch_get_global_queue(2, 0), ^{
                LogFunc
            
                NSArray *snacks = [Snack findAllSortedBy:@"snackId" ascending:YES withPredicate:[NSPredicate predicateWithFormat:@"snackId >= 110 && snackId < 119"]];
                [snacks enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    [obj log];
                }];
                
                LogFunc
            });
        });
    });
}



@end
