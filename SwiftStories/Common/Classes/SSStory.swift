//
//  SSStory.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class SSStory: NSObject {
    
    var moments: [SSMoment]
    
    init(moments: [SSMoment]) {
        self.moments = moments
    }
    
    //TODO: take this out and use getVideoMoments().isEmpty instead
    func containsVideo() -> Bool {
        return self.moments.filter{ $0.mediaType == .video }.isEmpty ? false : true
    }
    
    func getVideoMoments() -> [SSMoment] {
        return self.moments.filter { $0.mediaType == .video }
    }
    
    func getPlayerItems() -> [AVPlayerItem] {
        return self.getVideoMoments().map { $0.playerItem! }
    }
    
    func getVideoStartTimeOfMoment(moment: SSMoment) -> Double {
        let videoMoments = moments.filter { $0.mediaType == .video }
        let currentMoment = videoMoments.index(of: moment)!
        if currentMoment == 0 {
            return 0
        } else {
            let priorItems = videoMoments[0 ..< currentMoment]
            return priorItems.map{ $0.duration }.reduce(0, +)
        }
    }
}
