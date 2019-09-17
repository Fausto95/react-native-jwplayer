//  Created by react-native-create-bridge

#import <Foundation/Foundation.h>
#import "JWPlayer.h"
//#import "JWPlayerManager.h"

// import RCTBridge
#if __has_include(<React/RCTBridge.h>)
#import <React/RCTBridge.h>
#elif __has_include(“RCTBridge.h”)
#import “RCTBridge.h”
#else
#import “React/RCTBridge.h” // Required when used as a Pod in a Swift project
#endif
//  Created by react-native-create-bridge

// import RCTViewManager
#if __has_include(<React/RCTViewManager.h>)
#import <React/RCTViewManager.h>
#elif __has_include(“RCTViewManager.h”)
#import “RCTViewManager.h”
#else
#import “React/RCTViewManager.h” // Required when used as a Pod in a Swift project
#endif

@interface JWPlayerViewManager : RCTViewManager

@end

@implementation JWPlayerViewManager

//@synthesize bridge = _bridge;

// Export a native module
// https://facebook.github.io/react-native/docs/native-modules-ios.html
RCT_EXPORT_MODULE(REACT_NATIVE_JW_PLAYER);

// Return the native view that represents your React component
- (UIView *)view
{
  return [[JWPlayerView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

RCT_EXPORT_VIEW_PROPERTY(fileUri, NSString)
RCT_EXPORT_VIEW_PROPERTY(playerKey, NSString)

@end
