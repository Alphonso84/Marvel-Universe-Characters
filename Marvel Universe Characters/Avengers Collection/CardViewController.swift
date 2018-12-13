//
//  CardViewController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/2/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//
import Foundation
import UIKit
import CoreData

var Heroes = [Hero]()

class CardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let Thor = Hero(name: "Thor", bio: "As the son of Odin and Gaea, Thor's strength, endurance and resistance to injury are greater than the vast majority of his superhuman race. He is extremely long-lived (though not completely immune to aging), immune to conventional disease and highly resistant to injury. His flesh and bones are several times denser than a human's.As Lord of Asgard, Thor possessed the Odinforce, which enabled him to tap into the near-infinite resources of cosmic and mystical energies, enhancing all of his abilities. With the vast magical power of the Odinforce, Thor was even able to dent Captain America’s virtually indestructible shield with Mjolnir.", pic: #imageLiteral(resourceName: "Thor"))
    
    let Spiderman = Hero(name: "Spider Man", bio: "Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.", pic: #imageLiteral(resourceName: "SpiderMan"))
    
    let Ironman = Hero(name: "Iron Man", bio: "Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity. Now with a new outlook on life, Tony uses his money and intelligence to make the world a safer, better place as Iron Man.", pic: #imageLiteral(resourceName: "IronMan"))
    
    let CaptAmerica = Hero(name: "Captain America", bio: "Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become America's one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.", pic: #imageLiteral(resourceName: "Capt America"))
    
    let Hulk = Hero(name: "Hulk", bio: "Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets. ", pic: #imageLiteral(resourceName: "Hulk"))
    
    let Falcon = Hero(name: "Falcon", bio: "With a mental connection to all birds and a suit that gives him wings to fly, The Falcon has been both the partner to Captain America and an Avenger himself. Whether as a super hero or in his secret identity of social worker Sam Wilson, The Falcon dedicates his life to standing up for others", pic: #imageLiteral(resourceName: "Falcon"))
    
    let HawkEye = Hero(name: "Hawk Eye", bio: "Hawk-Eye(Ronin) is a world-class archer and marksman. His above average reflexes and hand-eye-coordination make him the most proficient archer ever known. He is also trained to throw knifes, darts, balls, bolas and boomerangs. He is natural athlete. He is also formidable unarmed combatant, thanks largely for longtime combat training with Captain America. He also has extensive training as an acrobat and aerialist. He is highly capable and charismatic team leader and a shrewd combat strategist, albeit sometimes reckless. Barton is also talented weapon designer, particularly well-versed in variations on basic traditional weaponry such as arrows, blades and hand-thrown projectiles. He has designed and crafted crescent darts, boomerangs, throwing irons, bolas, axes, custom arrows and bows. he is experienced motorcycle rider, Barton was one of the of the most proficient and daring pilots of the Avengers' supersonic Quinjets and other aircraft. He was once 80% deaf due to an injury, but his hearing was restored during his rebirth on Franklin Richards' Counter-Earth.", pic: #imageLiteral(resourceName: "HawkEye"))
    
    let BlackPanther = Hero(name: "Black Panther", bio: "Black Panther (T'Challa) is a brilliant tactician, strategist, scientist, tracker and a master of all forms of unarmed combat whose unique hybrid fighting style incorporates acrobatics and aspects of animal mimicry. T'Challa being a royal descendent of a warrior race is also a master of armed combat, able to use a variety of weapons but prefers unarmed combat. He is a master planner who always thinks several steps ahead and will go to extreme measures to achieve his goals and protect the kingdom of Wakanda.", pic: #imageLiteral(resourceName: "BlackPanther"))
    
    let BlackWidow = Hero(name: "Black Widow", bio: "Natasha Romanova, known by many aliases, is an expert spy, athlete, and assassin. Trained at a young age by the KGB's infamous Red Room Academy, the Black Widow was formerly an enemy to the Avengers. She later became their ally after breaking out of the U.S.S.R.'s grasp, and also serves as a top S.H.I.E.L.D. agent.", pic: #imageLiteral(resourceName: "BlackWidow"))
    
    
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -30, max: 30)
        return Heroes.count
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        
        cell.cellLabel.text = Heroes[indexPath.row].name
        cell.cellTextField.text = Heroes[indexPath.row].bio
        cell.imageCell.image = Heroes[indexPath.row].pic
        cell.layer.cornerRadius = 0
        UIView.animate(withDuration: 0.3, animations: {
            cell.layer.cornerRadius = 75
        })
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "HeroController") as! HeroController
        
        detailController.title = "\(Heroes[indexPath.row].name)"
        detailController.detailImage = Heroes[indexPath.row].pic
        
        
        navigationController?.show(detailController, sender: CardViewController.self)
        
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
    
    override func viewWillAppear(_ animated: Bool) {
         
    }
    
    override func viewDidLoad() {
       // backGround.image = UIImage(named: "AvengersCellBackGround")
        Heroes.removeAll()
        Heroes.append(Spiderman)
        Heroes.append(Ironman)
        Heroes.append(CaptAmerica)
        Heroes.append(Falcon)
        Heroes.append(Thor)
        Heroes.append(Hulk)
        Heroes.append(HawkEye)
        Heroes.append(BlackPanther)
        Heroes.append(BlackWidow)
        
    }
    
   
}

