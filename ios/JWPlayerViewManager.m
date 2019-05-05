//
//  JWPlayerViewManager.m
//  Jwplayer
//
//  Created by Faustino Kialungila on 05/05/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

#import "React/RCTViewManager.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(JWPlayerViewManager, RCTViewManager)
RCT_EXPORT_VIEW_PROPERTY(handleOnPlay, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(track, NSString)
RCT_EXPORT_VIEW_PROPERTY(videoUrl, NSString)
RCT_EXPORT_VIEW_PROPERTY(playerKey, NSString)
RCT_EXPORT_VIEW_PROPERTY(trackUrl, NSString)
RCT_EXPORT_VIEW_PROPERTY(trackLang, NSString)
@end
