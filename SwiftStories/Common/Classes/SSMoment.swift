//
//  Moment.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit

enum SSMomentMediaType: String {
    case image
    case video
}

class SSMoment: NSObject {
    
    var mediaType: SSMomentMediaType
    var image: UIImage
    var duration: Double
    
    init(image: UIImage, duration: Double?) {
        self.mediaType = .image
        self.image = image
        self.duration = duration ?? 5.00
    }
}
