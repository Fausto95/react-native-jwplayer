//
//  Created by Faustino Kialungila on 08/09/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JWPlayer.h"

// import RCTEventDispatcher
#if __has_include(<React/RCTEventDispatcher.h>)
#import <React/RCTEventDispatcher.h>
#elif __has_include(“RCTEventDispatcher.h”)
#import “RCTEventDispatcher.h”
#else
#import “React/RCTEventDispatcher.h” // Required when used as a Pod in a Swift project
#endif
#import <JWPlayer_iOS_SDK/JWPlayerController.h>


@implementation JWPlayerView : UIView  {

  RCTEventDispatcher *_eventDispatcher;
  UIView *_childView;
  UIView *_playerView;
}

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
  if ((self = [super init])) {
    _eventDispatcher = eventDispatcher;
    JWConfig *config = [[JWConfig alloc] init];
    self.player = [[JWPlayerController alloc] initWithConfig:config];
    _playerView =  self.player.view;
  }
    
  return self;
}

- (void) layoutSubviews
{
  [super layoutSubviews];
  _playerView.frame = self.bounds;
  [self addSubview:_playerView];
}

- (void) setFileUri:(NSString *)fileUri {
  _fileUri = fileUri;
  [self _setFileUriAndRerender: _fileUri];
}

- (void)_setFileUriAndRerender:(NSString*)file {
 self.player.config.file = file;
 [_playerView setNeedsDisplay];
}

- (void) setPlayerKey:(NSString *)pKey {
  _playerKey = pKey;
  [self _setPlayerKeyAndRerender: _playerKey];
}

- (void)_setPlayerKeyAndRerender:(NSString*)key {
  [JWPlayerController setPlayerKey:key];
  [_playerView setNeedsDisplay];
}


@end
