//
//  SSMomentView.swift
//  SwiftStories
//
//  Created by Ian on 2/18/18.
//  Copyright © 2018 jumplabs. All rights reserved.
//

import Foundation
import UIKit

protocol SSMomentViewDelegate: class {
    func didTapNext(sender: SSMomentView)
    func didTapPrevious(sender: SSMomentView)
}

class SSMomentView : UIImageView {
    
    var moment: SSMoment
    
    weak var delegate: SSMomentViewDelegate?

    init(moment: SSMoment) {
        self.moment = moment
        super.init(image: UIImage())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func nextTapped() {
        self.delegate?.didTapNext(sender: self)
    }
    
    @objc func previousTapped() {
        self.delegate?.didTapPrevious(sender: self)
    }
    
}
