//
//  JWPlayerView.swift
//  Jwplayer
//
//  Created by Faustino Kialungila on 05/05/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

@objc (JWPlayerViewManager)
class JWPlayerViewManager: RCTViewManager {
    override func view() -> UIView! {
        return PlayerView()
    }
    
    override static func requiresMainQueueSetup() -> Bool {
        return false
    }
    
}
