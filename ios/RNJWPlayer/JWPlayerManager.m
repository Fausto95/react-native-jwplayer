//
//  Created by Faustino Kialungila on 08/09/2019.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTViewManager.h>
#import "JWPlayer.h"


@interface JWPlayerViewManager : RCTViewManager

@end

@implementation JWPlayerViewManager

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
