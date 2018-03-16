//
//  SSStoryFactory.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit

class SSStoryFactory: NSObject {
    
    func create(media: [AnyObject]) -> SSStory {
        var moments = [SSMoment]()
        
        for mediaItem in media {
            switch mediaItem {
            case is UIImage:
                let imageMoment = SSMoment(image: mediaItem as! UIImage, duration: nil)
                moments.append(imageMoment)
                break
            case is URL:
                let videoMoment = SSMoment(url: mediaItem as! URL)
                moments.append(videoMoment)
                break
            // TODO: add support for initializing image moment from URL type
            default:
                break
            }
            
        }
        
        return SSStory(moments: moments)
    }
    
    func create(moments: [SSMoment]) -> SSStory {
        return SSStory(moments: moments)
    }
    
}
