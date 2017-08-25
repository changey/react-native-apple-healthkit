//
//  RCTAppleHealthkitManager.m
//  RCTAppleHealthKit
//
//  Created by Eric Chang on 8/24/17.
//  Copyright © 2017 Eric Chang. All rights reserved.
//

#import "RCTAppleHealthkitManager.h"
#import <HealthKit/HealthKit.h>
#import "BackgroundRefreshLogger.h"
#import "RCTAppleHealthkitEventEmitter.h"

@interface  RCTAppleHealthkitManager ()

@property (nonatomic, retain) HKHealthStore *healthStore;

@end

@implementation RCTAppleHealthkitManager : NSObject

//This is essentially creating a sharedManager (HealthKitManager) that can be called in AppDelegate
+ (RCTAppleHealthkitManager *)sharedManager {
    static dispatch_once_t pred = 0;
    static RCTAppleHealthkitManager *instance = nil;
    dispatch_once(&pred, ^{
        instance = [[RCTAppleHealthkitManager alloc] init];
        instance.healthStore = [[HKHealthStore alloc] init];
    });
    return instance;
}



@end
