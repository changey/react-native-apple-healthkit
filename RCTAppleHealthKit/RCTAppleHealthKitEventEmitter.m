//
//  RCTAppleHealthKitEventEmitter.m
//  RCTAppleHealthKit
//
//  Created by Eric Chang on 8/24/17.
//  Copyright © 2017 Eric Chang. All rights reserved.
//

#import "RCTAppleHealthKitEventEmitter.h"
#import "RCTLog.h"
#import "RCTEventDispatcher.h"

@implementation RCTAppleHealthKitEventEmitter

RCT_EXPORT_MODULE()

- (NSArray<NSString *> *)supportedEvents {
    return @[@"healthkitValueAddedHandler"];
}

- (void)startObserving
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(emitEventInternal:)
                                                 name:@"event-emitted"
                                               object:nil];
}

- (void)stopObserving
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)emitEventInternal:(NSNotification *)notification
{
    [self sendEventWithName:@"healthkitValueAddedHandler"
                       body:@""];
}

+ (void)emitEventWithName:(NSString *)name andPayload:(NSDictionary *)payload
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"event-emitted"
                                                        object:self
                                                      userInfo:payload];
}

@end
