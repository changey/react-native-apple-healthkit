//
//  RCTAppleHealthKitEventEmitter.h
//  RCTAppleHealthKit
//
//  Created by Eric Chang on 8/24/17.
//  Copyright © 2017 Eric Chang. All rights reserved.
//

#import "RCTEventEmitter.h"
#import "RCTBridgeModule.h"

@interface RCTAppleHealthKitEventEmitter : RCTEventEmitter <RCTBridgeModule>

+ (void)emitEventWithName:(NSString *)name andPayload:(NSDictionary *)payload;

@end
