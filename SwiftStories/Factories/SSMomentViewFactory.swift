//
//  SSMomentViewFactory.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit

class SSMomentViewFactory {
    
    func create(storyViewController: SSStoryViewController, moment: SSMoment) -> SSMomentView {
        
        let momentView = SSMomentView(moment: moment)
        
        momentView.frame = UIScreen.main.bounds
        momentView.isUserInteractionEnabled = true
        
        if moment.mediaType == .image {
            momentView.image = moment.image
        }
        
        momentView.addSubview(createRightGestureView(momentView))
        momentView.addSubview(createLeftGestureView(momentView))

        return momentView
    }
    
    func createLeftGestureView(_ view: SSMomentView) -> UIView {
        let gestureView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width/3, height: UIScreen.main.bounds.height))
        let tap = UITapGestureRecognizer(target: view, action: #selector(view.previousTapped))
        gestureView.addGestureRecognizer(tap)
        gestureView.isUserInteractionEnabled = true
        return gestureView
    }
    
    func createRightGestureView(_ view: SSMomentView) -> UIView {
        let gestureView = UIView(frame: CGRect(x: UIScreen.main.bounds.width/3, y: 0, width: UIScreen.main.bounds.width*2/3, height: UIScreen.main.bounds.height))
        let tap = UITapGestureRecognizer(target: view, action: #selector(view.nextTapped))
        gestureView.addGestureRecognizer(tap)
        gestureView.isUserInteractionEnabled = true
        return gestureView
    }

}
