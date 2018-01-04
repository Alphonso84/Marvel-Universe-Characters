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
    
   let Spiderman = Hero.init(name: "Spider Man", bio: "Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.", pic: #imageLiteral(resourceName: "SpiderMan"))
    
   let Ironman = Hero.init(name: "Iron Man", bio: "Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity. Now with a new outlook on life, Tony uses his money and intelligence to make the world a safer, better place as Iron Man.", pic: #imageLiteral(resourceName: "IronMan"))
    
    let CaptAmerica = Hero.init(name: "Captain America", bio: "Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become America's one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.", pic: #imageLiteral(resourceName: "Capt America"))
    
    let Hulk = Hero.init(name: "Hulk", bio: "Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets. ", pic: #imageLiteral(resourceName: "Hulk"))
    
    let HawkEye = Hero(name: "Hawk Eye", bio: "Hawk-Eye(Ronin) is a world-class archer and marksman. His above average reflexes and hand-eye-coordination make him the most proficient archer ever known. He is also trained to throw knifes, darts, balls, bolas and boomerangs. He is natural athlete. He is also formidable unarmed combatant, thanks largely for longtime combat training with Captain America. He also has extensive training as an acrobat and aerialist. He is highly capable and charismatic team leader and a shrewd combat strategist, albeit sometimes reckless. Barton is also talented weapon designer, particularly well-versed in variations on basic traditional weaponry such as arrows, blades and hand-thrown projectiles. He has designed and crafted crescent darts, boomerangs, throwing irons, bolas, axes, custom arrows and bows. he is experienced motorcycle rider, Barton was one of the of the most proficient and daring pilots of the Avengers' supersonic Quinjets and other aircraft. He was once 80% deaf due to an injury, but his hearing was restored during his rebirth on Franklin Richards' Counter-Earth.", pic: #imageLiteral(resourceName: "HawkEye"))
    
    let BlackPanther = Hero(name: "Black Panther", bio: "Black Panther (T'Challa) is a brilliant tactician, strategist, scientist, tracker and a master of all forms of unarmed combat whose unique hybrid fighting style incorporates acrobatics and aspects of animal mimicry. T'Challa being a royal descendent of a warrior race is also a master of armed combat, able to use a variety of weapons but prefers unarmed combat. He is a master planner who always thinks several steps ahead and will go to extreme measures to achieve his goals and protect the kingdom of Wakanda.", pic: #imageLiteral(resourceName: "BlackPanther"))

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Heroes.count
        }
    
    //Cell Config
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        
        cell.cellLabel.text = Heroes[indexPath.row].name
        cell.cellTextField.text = Heroes[indexPath.row].bio
        cell.imageCell.image = Heroes[indexPath.row].pic
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "HeroController") as! PhotosDetailController
        detailController.photo = UIImage(named: array[indexPath.row] + ".jpg")
        navigationController?.show(detailController, sender: collectionView)
    }
    
    func viewWillAppear() {
        
    }
    
    override func viewDidLoad() {
       
        Heroes.append(Spiderman)
        Heroes.append(Ironman)
        Heroes.append(CaptAmerica)
        Heroes.append(Hulk)
        Heroes.append(HawkEye)
        Heroes.append(BlackPanther)
       
       
    }

}

