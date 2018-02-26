//
//  SSStoryViewController.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class SSStoryViewController : UIViewController, SSMomentViewDelegate {
    
    var story: SSStory
    var momentViews = [SSMomentView]()
    var viewingMoment = 0
    var avPlayer = AVQueuePlayer()
    
    init(story: SSStory) {
        self.story = story
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if momentViews.last?.moment.mediaType == .video {
            avPlayer.play()
        }
    }
    
    func setupMomentViews() {
        for view in self.momentViews {
            self.view.addSubview(view)
        }
    }
    
    // MARK: SSMomentViewDelegate functions
    
    func didTapNext(sender: SSMomentView) {
        //cycle views
        guard momentViews.index(of: sender) != 0 else {
            self.dismiss(animated: true, completion: nil)
            return
        }
        let currentMoment = momentViews.index(of: sender)!
        self.willPresentMomentView(momentView: momentViews[currentMoment - 1])
        sender.isHidden = true
        
    }

    func didTapPrevious(sender: SSMomentView) {
        let currentMoment = momentViews.index(of: sender)!
        if momentViews.indices.contains(currentMoment + 1) {
            let previousView = momentViews[currentMoment + 1]
            self.willPresentMomentView(momentView: previousView)
            previousView.isHidden = false
        }
    }
    
    func didPresentMomentView(momentView: SSMomentView) {
        //TODO: decide between did or will present
    }
    
    func willPresentMomentView(momentView: SSMomentView) {
        (momentView.moment.mediaType == .video) ? avPlayer.play() : avPlayer.pause()
        //TODO: add seek to time:
    }
}
