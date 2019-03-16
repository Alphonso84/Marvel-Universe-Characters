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

    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        myMotionEffect(view: collectionView, min: -30, max: 30)
        return XMenHeroes.count
        
    }
    
    //Cell Config
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: XMenCardViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! XMenCardViewCell
        
        cell.cellLabel.text = XMenHeroes[indexPath.row].name
        cell.cellTextField.text = XMenHeroes[indexPath.row].bio
        cell.imageCell.image = XMenHeroes[indexPath.row].pic
        cell.layer.cornerRadius = 0
        UIView.animate(withDuration: 0.3, animations: {
            cell.layer.cornerRadius = 75
        })
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "XMenHeroController") as! XMenHeroController
        
        detailController.title = "\(XMenHeroes[indexPath.row].name)"
        detailController.detailImage = XMenHeroes[indexPath.row].pic
        heroSelected = detailController.title!
        navigationController?.show(detailController, sender: collectionView)
        Networking().getMarvelData()
    }
    
    
    override func viewDidLoad() {
        XMenHeroes.removeAll()
        XMenHeroes.append(Wolverine)
        XMenHeroes.append(Cyclops)
        XMenHeroes.append(Storm)
        XMenHeroes.append(Colossus)
        XMenHeroes.append(Angel)
        XMenHeroes.append(Rogue)
        XMenHeroes.append(NorthStar)
        XMenHeroes.append(JeanGrey)
        XMenHeroes.append(IceMan)
        XMenHeroes.append(EmmaFrost)
        XMenHeroes.append(Gambit)
        XMenHeroes.append(Beast)
        
        
        
    }
    
}

