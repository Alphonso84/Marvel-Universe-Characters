//
//  FantasticFourHeroController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/5/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit


class FantasticFourHeroController: UIViewController {
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    @IBOutlet weak var detailBackGround: UIImageView!
    
    var detailImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        visualEffectView.layer.cornerRadius = 75
        detailBackGround.layer.cornerRadius = 75
        detailBackGround.image = detailImage
        myMotionEffect(view: visualEffectView, min: -15, max: 15)
        myMotionEffect(view: detailBackGround, min: -60, max: 60)
        tabBarItem.title = "Hello"
    }
    
    
}
