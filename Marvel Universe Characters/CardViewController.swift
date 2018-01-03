//
//  CardViewController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/2/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//
import Foundation
import UIKit



class CardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
     let Spiderman = Hero.init(name: "Spider Man", bio: "Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.", pic: #imageLiteral(resourceName: "SpiderMan"))
    var Heroes: Hero = []

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    //Cell Config
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
       
        return cell
    }
    
    func viewWillAppear() {
        
    }
    
    override func viewDidLoad() {
        
       
    }

}

