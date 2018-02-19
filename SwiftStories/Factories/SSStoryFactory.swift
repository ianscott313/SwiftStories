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
                let newMoment = SSMoment(image: mediaItem as! UIImage, duration: nil)
                moments.append(newMoment)
                break
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
