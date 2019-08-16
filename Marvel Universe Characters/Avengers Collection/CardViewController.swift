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

var heroSelected = String()

class CardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    var characterArray = [Hero]()
   
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -30, max: 30)
       
        return characterArray.count
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
       
        
        cell.cellLabel.text = characterArray[indexPath.row].name
        cell.cellTextField.text = characterArray[indexPath.row].bio
        cell.imageCell.image = characterArray[indexPath.row].pic
        cell.layer.cornerRadius = 0
        UIView.animate(withDuration: 0.3, animations: {
            cell.layer.cornerRadius = 75
        })
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "HeroController") as! HeroController
       
        
        detailController.title = "\(characterArray[indexPath.row].name)"
        detailController.detailImage = characterArray[indexPath.row].pic
        heroSelected = detailController.title!
        navigationController?.show(detailController, sender: CardViewController.self)
        Networking().getMarvelData()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        characterArray = Controller().getHeroArray(stringForHeroesArray: "Xmen")
    }
    
    override func viewDidLoad() {
        // backGround.image = UIImage(named: "AvengersCellBackGround")
       
        
    }
    
    
}

