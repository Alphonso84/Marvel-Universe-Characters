//
//  CardViewController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/2/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//
import Foundation
import UIKit

var Heroes = [Hero]()

class CardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
     let Spiderman = Hero.init(name: "Spider Man", bio: "Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.", pic: #imageLiteral(resourceName: "SpiderMan"))
    
   let Ironman = Hero.init(name: "Iron Man", bio: "Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity. Now with a new outlook on life, Tony uses his money and intelligence to make the world a safer, better place as Iron Man.", pic: #imageLiteral(resourceName: "IronMan"))
    
    let CaptAmerica = Hero.init(name: "Captain America", bio: "Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become America's one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.", pic: #imageLiteral(resourceName: "Capt America"))
    
    let Hulk = Hero.init(name: "Hulk", bio: "Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets. ", pic: #imageLiteral(resourceName: "Hulk"))

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
    
    func viewWillAppear() {
        
    }
    
    override func viewDidLoad() {
        Heroes.append(Spiderman)
        Heroes.append(Ironman)
        Heroes.append(CaptAmerica)
        Heroes.append(Hulk)
       
    }

}

