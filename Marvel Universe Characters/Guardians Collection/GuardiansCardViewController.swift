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
    
    
    
    let Groot = Hero(name: "Groot", bio: "Groot was extremely powerful and resilient, he has the power or regeneration allowing him to re-grow limbs and even his entire form. He also has powers of the mind, although they only appear to work on plant life, allowing him to communicate with other trees and command them to attack those that oppose him. He is highly vulnerable to attacks of fire.", pic: UIImage(named: "groot")!)
    
    let Drax = Hero(name: "Drax", bio: "Drax is a brutish, battle-tested warrior. A former intergalactic criminal, Drax has no interest in money, only avenging his slain family. Reluctant at first, the hero with an unquenchable murderous rage joins the Guardians of the Galaxy.", pic: UIImage(named: "Drax")!)
    
    let Rocket = Hero(name: "Rocket", bio: "An expert marksman with a penchant for large weaponry, Rocket Raccoon is the last of his kind. After being captured by the Kree, Rocket teams up with Star-Lord and other adventurers to form the Guardians of the Galaxy. Together, they travel the galaxy and defend it from those who wish it harm.", pic: UIImage(named: "Rocket_Raccoon")!)
    
    let StarLord = Hero(name: "Star Lord", bio: "Refusing to miss his opportunity, Peter Jason Quill stole a scoutship from Cape Canaveral, returned to Eve, and shot his way to the appointed spot, where his old rival Harrelson, NASA's choice to be Star-Lord, was awaiting selection, where Quill was transported away in his stead, and transformed into Star-Lord.", pic: UIImage(named: "Star Lord")!)
    
    let Gamora = Hero(name: "Gamora", bio: "Gamora received treatments from Thanos that enhanced her speed, strength, agility, and durability to rival Adam Warlock's (to better slay the Magus, his evil, future self). Thanos also helped her become a formidable hand-to-hand combatant, trained in the martial-arts techniques from various planets, in the uses of the known weaponry of the Milky Way Galaxy, and stealth techniques. She is also a highly-skilled gymnast and assassin, and formerly possessed a telepathic link to Thanos. She uses a wide variety of weaponry, most notably a dagger whose unknown properties made it capable of slaying even beings of such immense power as Thanos and the Magus.", pic: UIImage(named: "Gamora")!)
    
    
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
    
    func myMotionEffect(view: UIView, min: CGFloat, max: CGFloat) {
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        view.addMotionEffect(motionEffectGroup)
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
