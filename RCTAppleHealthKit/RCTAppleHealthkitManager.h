//
//  RCTAppleHealthkitManager.h
//  RCTAppleHealthKit
//
//  Created by Eric Chang on 8/24/17.
//  Copyright © 2017 Greg Wilson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RCTAppleHealthkitManager : NSObject

+ (RCTAppleHealthkitManager *)sharedManager;

- (void)setupHKListener;

@end
