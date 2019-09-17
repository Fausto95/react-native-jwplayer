//  Created by react-native-create-bridge

// import UIKit so you can subclass off UIView
#import <UIKit/UIKit.h>
#import <JWPlayer_iOS_SDK/JWPlayerController.h>

@class RCTEventDispatcher;

@interface JWPlayerView : UIView
  // Define view properties here with @property
  @property (nonatomic, strong) JWPlayerController *player;
  @property (nonatomic, assign) NSString *fileUri;
  @property (nonatomic, assign) NSString *playerKey;

  // Initializing with the event dispatcher allows us to communicate with JS
  - (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;

@end
