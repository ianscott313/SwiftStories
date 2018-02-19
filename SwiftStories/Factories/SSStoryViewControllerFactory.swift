//
//  SSStoryViewFactory.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit

class SSStoryViewControllerFactory {
    
    func create(story: SSStory) -> SSStoryViewController {
        
        let storyViewController = SSStoryViewController(story: story)
        storyViewController.view.frame = UIScreen.main.bounds
        storyViewController.view.isUserInteractionEnabled = true
        
        //create moment views for story
        for moment in story.moments {
            let view = SSMomentViewFactory().create(storyViewController: storyViewController, moment: moment)
            view.delegate = storyViewController
            storyViewController.momentViews.append(view)
        }
        
        // add moment views as subviews
        storyViewController.setupMomentViews()
        
        return storyViewController
        
    }
    
}


