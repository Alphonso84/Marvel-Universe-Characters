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

class CardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,UITabBarDelegate {
   
    var AvengersViewController = UIViewController()
    var GuardiansViewController = UIViewController()
    var FantasticFourViewController = UIViewController()
    var XmenViewController = UIViewController()
    var characterArray = [Hero]()
   
    let myTabBarController = UITabBarController(nibName: "myTabBarController", bundle:Bundle.main)
    @IBOutlet weak var backGround: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    func setupViews() {
        AvengersViewController.title = "Avengers"
        GuardiansViewController.title = "Guardians"
        FantasticFourViewController.title = "FantasticFour"
        XmenViewController.title = "Xmen"
        AvengersViewController.tabBarItem = UITabBarItem(title: AvengersViewController.title, image: UIImage(named: "AvengersIcon"), tag: 0)
        GuardiansViewController.tabBarItem = UITabBarItem(title: GuardiansViewController.title, image: UIImage(named:"guardianIcon"), tag: 1)
        FantasticFourViewController.tabBarItem = UITabBarItem(title: FantasticFourViewController.title, image: UIImage(named:"Fantastic4Icon"), tag: 2)
        XmenViewController.tabBarItem = UITabBarItem(title: XmenViewController.title, image: UIImage(named:"XmenIcon"), tag: 3)
        
        let controllers = [AvengersViewController, GuardiansViewController, FantasticFourViewController,XmenViewController]
        myTabBarController.viewControllers = controllers.map { UINavigationController(rootViewController: $0)}
    }
    
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
        
        characterArray = Controller().getHeroArray(stringForHeroesArray: "Guardians")
    }
    
    override func viewDidLoad() {
        // backGround.image = UIImage(named: "AvengersCellBackGround")
       setupViews()
        
    }
    
    
}

