//
//  ViewController.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let storyFactory = SSStoryFactory()
        let story = storyFactory.create(media: [UIImage(named: "IMG1.PNG")!, UIImage(named: "IMG2.PNG")!, UIImage(named: "IMG3.PNG")!])
        
        print(story.moments.count);
        
        let vc = SSStoryViewControllerFactory().create(story: story)
        self.present(vc, animated: true, completion: nil)
        
    }
    

}

