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
    func myMotionEffect(view: UIView, min: CGFloat, max: CGFloat) {
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        view.addMotionEffect(motionEffectGroup)
    }
    
}
