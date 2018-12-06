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

class FantasticFourCardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let Thing = Hero(name: "Thing", bio: "The Thing's mutated physiology grants him tremendous superhuman strength and durability, the levels varying with his different forms. There have been periods where Ben could assume human form at will; however, these situations seldom last long. He also has enhanced stamina and lung capacity, and increased resistance to sensory and temperature extremes. His reflexes are above-average by human standards despite his immense mass, and he retains a reasonable level of agility and dexterity.", pic: #imageLiteral(resourceName: "Thing"))
    
    let HumanTorch = Hero(name: "Human Torch", bio: "Johnny can cover his body in fire, fly at supersonic speeds, project fireballs or other fire objects, manipulate existing flame, and absorb heat with some mental strain. He can generate a nova-level burst of flame, one million degrees Fahrenheit, although this usually exhausts his powers for some time. Under normal usage, he is able to maintain his flame form for up to 17 hours.Johnny briefly gained the powers of the Invisible Woman, which included the ability to turn himself and others invisible, and generate powerful force fields. Cosmically enhanced by Galactus, these powers were greatly amplified, and he could traverse space as well as analyze and manipulate all forms of matter.", pic: #imageLiteral(resourceName: "Human Torch"))
    
    let InvisibleWoman = Hero(name: "Invisible Woman", bio: "Sue can render herself wholly or partially invisible at will. She can also render other people or objects invisible, affecting up to forty thousand cubic feet of volume. She achieves these feats by mentally bending all wavelengths of light in the vicinity around herself or the target in question, and she somehow does this without causing any visible distortion effects; she also somehow directs enough undistorted light to her eyes to retain her full range of vision while invisible. Sue can also mentally generate a psionic field of invisible force apparently drawn from hyperspace, which she manipulates for a variety of effects. Most commonly, Sue generates near-indestructible invisible force fields around herself or other targets. She can vary the texture and tensile strength of her field to some extent, rendering it highly rigid or as soft and yielding as foam; softer variations on the field enable her to cushion impacts more gently, and are less likely to result in a psionic backlash against Sue herself (in rare cases, sufficiently powerful attacks on her psionic fields can cause her mental or physical pain). Sue can shape her psionic force fields into invisible constructs, usually simple shapes such as barriers, columns, cones, cylinders, darts, discs, domes, platforms, rams, ramps, slides and spheres. By generating additional force behind her psionic constructs, Sue can turn them into offensive weapons, ranging from massive invisible battering rams to small projectiles such as spheres and darts. She can generate solid force constructs as small as a marble or as large as 100 feet in diameter, and her hollow projections such as domes can extend up to several miles in area. By forming one of her force fields within an object and expanding the field, Sue can cause her target to explode. She can also travel atop animated constructs such as ramps, stairs, slides, columns and stepping discs, enabling her to simulate a limited approximation of levitation or flight. She is capable of generating and manipulating multiple psionic force fields simultaneously. Sue once swapped powers with her brother Johnny for a brief period, and during that time had the ability to generate and manipulate flames for various effects.", pic: #imageLiteral(resourceName: "Susan Storm"))
    
    let MrFantastic = Hero(name: "Mr Fantastic", bio: "Mister Fantastic can shift his body (or portions of same) into a super-malleable state, enabling him to stretch, compress, expand, deform, elongate, contract or otherwise reshape his physical form at will. He can stretch his limbs, neck and torso to incredible lengths, though extending himself beyond approximately 1500 feet is a serious physical strain. When assuming non-humanoid shapes, he tends to favor simple constructs such as barricades, canopies, cylinders, cubes, nets, parachutes and spheres, generally assuming a volume of no greater than 1.7 cubic feet (though he can expand far beyond that volume if the shape he forms is thin-shelled and hollow). He can render himself paper-thin, or become slim enough in diameter to thread the eye of a needle. His malleable form renders him relatively immune to most conventional impacts; for instance, bullets fired into his body tend to bounce back at the shooter, and he can bodily contain small explosions. It is almost impossible to lacerate or puncture his skin unless he consciously allows such penetrations. By reshaping his features, Reed can disguise himself at will.", pic:#imageLiteral(resourceName: "Mr Fantastic"))
    
    
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
    
        navigationController?.show(detailController, sender: collectionView)
       
        
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
    
    func viewWillAppear() {
        
    }
    
    override func viewDidLoad() {
        Fantastic4Heroes.removeAll()
        Fantastic4Heroes.append(MrFantastic)
        Fantastic4Heroes.append(InvisibleWoman)
        Fantastic4Heroes.append(HumanTorch)
        Fantastic4Heroes.append(Thing)
        
        
        
        
    }
    
}

