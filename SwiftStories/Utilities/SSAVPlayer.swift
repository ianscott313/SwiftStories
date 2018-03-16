//
//  SSAVPlayer.swift
//  SwiftStories
//
//  Created by Ian on 2/26/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import AVFoundation

class SSAVPlayer: NSObject {
    
    //TODO: Switch to custom AVQueuePlayer Class to decouple media handling from SSStoryViewController
    
    var player = AVQueuePlayer()
    
    func playMoment(moment: SSMoment) {
        guard moment.mediaType == .video else {
            return
        }
        
        
    }
}
