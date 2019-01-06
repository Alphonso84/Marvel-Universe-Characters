//
//  HeroController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/4/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit


class HeroController: UIViewController {
    
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    @IBOutlet weak var mainBackGround: UIImageView!
    @IBOutlet weak var detailBackGround: UIImageView!
    @IBOutlet weak var underView: UIView!
    
    var detailImage = UIImage()
    
    override func viewWillAppear(_ animated: Bool) {
        detailBackGround.layer.masksToBounds = true
        visualEffectView.layer.cornerRadius = 75
        underView.layer.cornerRadius = 75
        detailBackGround.layer.cornerRadius = 75
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailBackGround.image = detailImage
        myMotionEffect(view: visualEffectView, min: -15, max: 15)
        myMotionEffect(view: detailBackGround, min: -60, max: 60)
    }
    
    
}
