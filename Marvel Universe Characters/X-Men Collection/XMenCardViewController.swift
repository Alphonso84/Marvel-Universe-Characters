//
//  XMenCardViewController.swift
//  Marvel Universe Characters
//
//  Created by user on 1/5/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var XMenHeroes = [Hero]()

class XMenCardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let Thing = Hero.init(name: "Thing", bio: "The Thing's mutated physiology grants him tremendous superhuman strength and durability, the levels varying with his different forms. There have been periods where Ben could assume human form at will; however, these situations seldom last long. He also has enhanced stamina and lung capacity, and increased resistance to sensory and temperature extremes. His reflexes are above-average by human standards despite his immense mass, and he retains a reasonable level of agility and dexterity.", pic: #imageLiteral(resourceName: "Thing"))
    
   
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return XMenHeroes.count
    }
    
    //Cell Config
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: FantasticCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FantasticCell
        
        cell.cellLabel.text = XMenHeroes[indexPath.row].name
        cell.cellTextField.text = XMenHeroes[indexPath.row].bio
        cell.imageCell.image = XMenHeroes[indexPath.row].pic
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "XMenHeroController") as! XMenHeroController
        
        detailController.detailImage = XMenHeroes[indexPath.row].pic
        
        showDetailViewController(detailController, sender: collectionView)
        
        //navigationController?.show(detailController, sender: CardViewController.self)
    }
    
    func viewWillAppear() {
        
    }
    
    override func viewDidLoad() {
        XMenHeroes.removeAll()
        Fantastic4Heroes.append(MrFantastic)
        Fantastic4Heroes.append(InvisibleWoman)
        Fantastic4Heroes.append(HumanTorch)
        Fantastic4Heroes.append(Thing)
        
        
        
        
    }
    
}

