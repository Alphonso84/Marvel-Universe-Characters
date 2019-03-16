//
//  GuardiansCardViewController.swift
//  Marvel Universe Characters
//
//  Created by user on 6/10/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var guardianHeroes = [Hero]()

class GuardiansCardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -30, max: 30)
        return guardianHeroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: GuardiansCardViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GuardiansCardViewCell
        
        cell.cellLabel.text = guardianHeroes[indexPath.row].name
        cell.cellTextField.text = guardianHeroes[indexPath.row].bio
        cell.imageCell.image = guardianHeroes[indexPath.row].pic
        cell.layer.cornerRadius = 0
        UIView.animate(withDuration: 0.3, animations: {
            cell.layer.cornerRadius = 75
        })
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "GuardiansHeroController") as! GuardiansHeroController
        detailController.title = "\(guardianHeroes[indexPath.row].name)"
        detailController.detailImage = guardianHeroes[indexPath.row].pic
        heroSelected = detailController.title!
        navigationController?.show(detailController, sender: collectionView)
        Networking().getMarvelData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guardianHeroes.removeAll()
        guardianHeroes.append(Groot)
        guardianHeroes.append(Rocket)
        guardianHeroes.append(StarLord)
        guardianHeroes.append(Gamora)
        guardianHeroes.append(Drax)
    }
    
    
    
    
    
    
    
    
    
}
