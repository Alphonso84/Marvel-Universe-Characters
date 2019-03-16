//
//  Fantastic4CardViewController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/5/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//
import Foundation
import UIKit

var Fantastic4Heroes = [Hero]()
var heroSelected:String = ""

class FantasticFourCardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -30, max: 30)
       
        return Fantastic4Heroes.count
    }
    
    //Cell Config
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: FantasticCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FantasticCell
        
        cell.cellLabel.text = Fantastic4Heroes[indexPath.row].name
        cell.cellTextField.text = Fantastic4Heroes[indexPath.row].bio
        cell.imageCell.image = Fantastic4Heroes[indexPath.row].pic
        cell.layer.cornerRadius = 0
        UIView.animate(withDuration: 0.3, animations: {
            cell.layer.cornerRadius = 75
        })
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "FantasticFourHeroController") as! FantasticFourHeroController
        
        detailController.title = "\(Fantastic4Heroes[indexPath.row].name)"
        detailController.detailImage = Fantastic4Heroes[indexPath.row].pic
        heroSelected = detailController.title!
        navigationController?.show(detailController, sender: collectionView)
        Networking().getMarvelData()
        
        
    }
        
    //Not Working Look Into implementation
    func addNavBarImage() {
        let navController = navigationController!
        let image = UIImage(named: "Marvel Logo")!
        let imageView = UIImageView(image: image)
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        let bannerX = bannerWidth - image.size.width
        let bannerY = bannerHeight - image.size.height
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        
        print("Called ADD NAVBAR IMAGE")
    }
    
    func viewWillAppear() {
        
    }
    
    override func viewDidLoad() {
        addNavBarImage()
        
        Fantastic4Heroes.removeAll()
        Fantastic4Heroes.append(MrFantastic)
        Fantastic4Heroes.append(InvisibleWoman)
        Fantastic4Heroes.append(HumanTorch)
        Fantastic4Heroes.append(Thing)
    }
    
}

