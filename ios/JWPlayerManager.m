//
//  Created by Faustino Kialungila on 08/09/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWPlayer.h"
#import "JWPlayerManager.h"

// import RCTBridge
#if __has_include(<React/RCTBridge.h>)
#import <React/RCTBridge.h>
#elif __has_include(“RCTBridge.h”)
#import “RCTBridge.h”
#else
#import “React/RCTBridge.h” // Required when used as a Pod in a Swift project
#endif

@implementation JWPlayerManager

@synthesize bridge = _bridge;

// Export a native module
// https://facebook.github.io/react-native/docs/native-modules-ios.html
RCT_EXPORT_MODULE(JWPlayer);

// Return the native view that represents your React component
- (UIView *)view
{
  return [[JWPlayer alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

RCT_EXPORT_VIEW_PROPERTY(fileUri, NSString)
RCT_EXPORT_VIEW_PROPERTY(playerKey, NSString)

// Export constants
// https://facebook.github.io/react-native/releases/next/docs/native-modules-ios.html#exporting-constants
- (NSDictionary *)constantsToExport
{
  return @{
           @"EXAMPLE": @"example"
         };
}

@end
