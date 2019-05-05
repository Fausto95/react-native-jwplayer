//
//  Player.swift
//  Jwplayer
//
//  Created by Faustino Kialungila on 05/05/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import UIKit

class PlayerView: UIView, JWPlayerDelegate {
    
    let config: JWConfig  = JWConfig(contentURL: "")
    var player: JWPlayerController?
    
    @objc var trackLang: NSString?
    
    @objc var videoUrl: NSString = "" {
        didSet {
            config.file = videoUrl as String
        }
    }
    
    @objc var playerKey: NSString = "" {
        didSet {
            JWPlayerController.setPlayerKey(playerKey as String)
        }
    }
    
    @objc var trackUrl: NSString = "" {
        didSet {
            if trackLang != nil {
                config.tracks = [JWTrack(file: trackUrl as String, label: trackLang as String?)]
            }
        }
    }
    
    
    
    func setupPlayer() {
        player = JWPlayerController(config: config)
        player!.delegate = self
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        setupPlayer()
        let playerView: UIView = player!.view
        self.addSubview(playerView)
        playerView.constrainToSuperview()
    }
}

//// MARK: - Helper method
//
extension UIView {
    /// Constrains the view to its superview, if it exists, using Autolayout.
    /// - precondition: For player instances, JWP SDK 3.3.0 or higher.
    @objc func constrainToSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|[thisView]|",
                                                                   options: [],
                                                                   metrics: nil,
                                                                   views: ["thisView": self])
        
        let verticalConstraints   = NSLayoutConstraint.constraints(withVisualFormat: "V:|[thisView]|",
                                                                   options: [],
                                                                   metrics: nil,
                                                                   views: ["thisView": self])
        
        NSLayoutConstraint.activate(horizontalConstraints + verticalConstraints)
    }
}

