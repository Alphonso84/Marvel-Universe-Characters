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
    
   
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -30, max: 30)
        let arrayController = Controller().getHeroArray(array: &Avengers)
        return arrayController.count
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: MyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        let arrayController = Controller().getHeroArray(array: &Avengers)
        
        cell.cellLabel.text = arrayController[indexPath.row].name
        cell.cellTextField.text = arrayController[indexPath.row].bio
        cell.imageCell.image = arrayController[indexPath.row].pic
        cell.layer.cornerRadius = 0
        UIView.animate(withDuration: 0.3, animations: {
            cell.layer.cornerRadius = 75
        })
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "HeroController") as! HeroController
        let arrayController = Controller().getHeroArray(array: &Avengers)
        
        detailController.title = "\(arrayController[indexPath.row].name)"
        detailController.detailImage = arrayController[indexPath.row].pic
        heroSelected = detailController.title!
        navigationController?.show(detailController, sender: CardViewController.self)
        Networking().getMarvelData()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        // backGround.image = UIImage(named: "AvengersCellBackGround")
       
        
    }
    
    
}

