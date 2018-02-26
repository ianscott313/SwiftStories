//
//  MomentFactory.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit

class SSMomentFactory: NSObject {
    
    func create(image: UIImage, duration: Double?) -> SSMoment {
        return SSMoment(image: image, duration: duration)
    }
    
    func create(url: URL) -> SSMoment {
        return SSMoment(url: url)
    }

}
