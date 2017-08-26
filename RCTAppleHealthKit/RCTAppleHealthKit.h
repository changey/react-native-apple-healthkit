//
//  RCTAppleHealthKit.h
//  RCTAppleHealthKit
//
//  Created by Greg Wilson on 2016-06-26.
//  Copyright © 2016 Greg Wilson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <HealthKit/HealthKit.h>
#import "RCTBridgeModule.h"
#import "RCTUtils.h"
#import "RCTLog.h"
#import "RCTEventEmitter.h"

@interface RCTAppleHealthKit : RCTEventEmitter <RCTBridgeModule>

@property (nonatomic) HKHealthStore *healthStore;

- (void)isHealthKitAvailable:(RCTResponseSenderBlock)callback;
- (void)initializeHealthKit:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
- (void)getModuleInfo:(NSDictionary *)input callback:(RCTResponseSenderBlock)callback;
+ (void)emitEventWithName:(NSString *)name andPayload:(NSDictionary *)payload;

@end
