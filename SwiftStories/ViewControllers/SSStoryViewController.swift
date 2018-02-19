//
//  SSStoryViewController.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit

class SSStoryViewController : UIViewController, SSMomentViewDelegate {
    
    var story: SSStory
    var momentViews = [SSMomentView]()
    var viewingMoment = 0
    
    
    init(story: SSStory) {
        self.story = story
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupMomentViews() {
        for view in self.momentViews {
            self.view.addSubview(view)
        }
    }
    
    // MARK: SSMomentViewDelegate functions
    
    func didTapNext(sender: SSMomentView) {
        //cycle views
        print("delegate responds")
        self.momentViews[viewingMoment].removeFromSuperview()
        for subview in self.momentViews {
            if subview == sender {
                subview.removeFromSuperview()
            }
        }
    }

}
