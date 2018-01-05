//
//  XMenHeroController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/5/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit


class XMenHeroController: UIViewController {
    
    @IBOutlet weak var detailBackGround: UIImageView!
    
    var detailImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailBackGround.image = detailImage
    }
    
}
