//
//  XMenCardViewCell.swift
//  Marvel Universe Characters
//
//  Created by user on 1/5/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class XMenCardViewCell: UICollectionViewCell {
    var imageURLString = ""
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var cellTextField: UITextView!
    @IBOutlet weak var cellLabel: UILabel!
    
    func viewDidLoad() {
        viewDidLayoutSubviews()
    }
    
    
    func viewDidLayoutSubviews() {
        cellTextField.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
    }
}
