//
//  Moment.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

enum SSMomentMediaType: String {
    case image
    case video
}

class SSMoment: NSObject {
    
    var mediaType: SSMomentMediaType
    var image: UIImage
    var asset : AVAsset?
    var playerItem : AVPlayerItem?
    var url: URL?
    var duration: Double
    
    init(image: UIImage, duration: Double?) {
        self.mediaType = .image
        self.image = image
        self.duration = duration ?? 5.00
    }
    
    init(url: URL) {
        self.mediaType = .video
        self.image = UIImage()
        self.url = url
        let asset = AVAsset(url: url)
        self.asset = asset
        self.playerItem = AVPlayerItem(asset: asset)
        self.duration = asset.duration.seconds
    }
    
    init(asset: AVAsset) {
        self.mediaType = .video
        self.image = UIImage()
        self.asset = asset
        self.duration = asset.duration.seconds
    }
    
}
