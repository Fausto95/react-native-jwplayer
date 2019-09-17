//
//  Created by Faustino Kialungila on 08/09/2019.
//

#import "JwPlayer.h"

#import <React/RCTViewManager.h>

@interface JwPlayer : RCTViewManager

@end

@implementation JwPlayer

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[RNTPlayer alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

RCT_EXPORT_VIEW_PROPERTY(fileUri, NSString)
RCT_EXPORT_VIEW_PROPERTY(playerKey, NSString)


@end
