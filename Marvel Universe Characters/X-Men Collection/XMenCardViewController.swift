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
    
    let Angel = Hero.init(name: "Arch Angel", bio: "Archangel has fully feathered wings that span 16' and have a very flexible skeletal structure. He can fly by flapping his wings, and can reach speeds of up to 150 mph. Though he generally flies below the height of clouds at 6,500 feet, Archangel can reach a height of 10,000 feet with little effort. His wings are strong enough to carry aloft at least 200 pounds in addition to his own body weight. Archangel's entire anatomy is adapted for flight, having hollow bones; a body virtually devoid of fat, granting him enhanced proportionate muscle strength; eyes that can withstand high-speed winds; enhanced eyesight enabling him to see at distances far greater than the average human; and a special respiratory membrane that extracts oxygen from the air at extreme velocities and altitudes. Following his secondary mutation, Archangel can heal fatal injuries and cure most known diseases at an accelerated speed by mixing his blood with that of the victims, so long as they have a compatible blood type. After genetic alteration by Apocalypse, Archangel's wings became composed of a razor-sharp organic steel-like material, allowing him to use them as slashing weapons. He can also expel his feathers at great speed and with tremendous force, enabling them to pierce even steel. The feathers are tipped with a paralyzing chemical generated by his body (he is immune). He also briefly possessed the ability to convert his life-force into solid light to form a pair of energy wings.", pic: #imageLiteral(resourceName: "Angel"))
    
    let Beast = Hero.init(name: "Beast", bio: "The Beast possesses superhuman strength, agility, endurance, and speed, despite his bulk. He possesses the agility of a great ape and the acrobatic prowess of an accomplished circus aerialist. His physiology is durable enough to allow him to survive a three story fall by landing on his feet without suffering any broken bones or sprains. The Beast's legs are powerful enough to enable him to leap approximately 15 feet high in a standing high jump, and around 25 feet in a standing broad jump. He can also run on all fours at approximately 40 miles per hour for short sprints.The Beast can crawl up brick walls by wedging his fingers and toes into the smallest cracks and applying a vice-like grip on them, as well as walk a tightrope with minimal effort. He is adept in performing complicated sequences of gymnastics such as flips, rolls, and springs, and can also walk on his hands for many hours. Further, his manual and pedial dexterity are so great that he can perform multiple tasks such as writing with both hands at once or tie knots in rope with his toes.The Beast possesses enhanced senses, the ability to secrete pheromones to attract members of the opposite sex, as well as a slight healing factor that allows him to regenerate minor wounds and recover quickly from minor ailments such as colds. The Beast also possesses cat-like night vision as well as razor-sharp claws on his hands and feet.", pic: #imageLiteral(resourceName: "Beast"))
    
    let Colossus = Hero.init(name: "Colossus", bio: "Colossus can transform his body tissue into an organic, steel-like substance that grants him superhuman strength enabling him to lift/press up to 75 tons and makes him impervious to most injury. His armored form can withstand ballistic penetration as well as temperature extremes from 70º above absolute zero (-390º F) to approximately 9000º F. Colossus cannot become partially or selectively armored; his body is either entirely converted, or not at all. Even his eyes become steel-like.Through an act of will, Colossus can transform virtually instantaneously into his armored state, and can remain in that form for an as yet undetermined amount of time. Once in his armored form, Colossus remains so until he consciously wills himself back to normal. If he is rendered unconscious, however, he spontaneously reverts to his normal form. In his armored state, Colossus retains his normal human mobility, though his endurance and speed are enhanced. He does not need to breathe while transformed, but it is believed that he could not survive for long in a vacuum.", pic: #imageLiteral(resourceName: "Colossus"))
    
    let Gambit = Hero.init(name: "Gambit", bio: "Gambit is a mutant with the ability to convert the potential energy stored in an inanimate object into pure light kinetic energy, thus charging that item with highly explosive results. He prefers to charge smaller objects, such as his ever-present playing cards, as the time required to charge them is greatly reduced and they are much easier for him to throw. The only real limitation to this ability is the time required to charge the object: the larger it is the more time it takes to charge. Most charging takes place through direct skin contact. The power of his explosions is dependent on the mass of the object he is charging, for example, a charged playing card explodes with the force of a grenade. Gambit can also use his mutant abilities to accelerate an object's kinetic energy instead of converting its potential energy; for example, he can charge his Bo staff with enough kinetic energy and power to level a house.Gambit's ability to tap kinetic energy also grants him incredible superhuman physical attributes (strength, speed, reflexes and reactions, agility, flexibility, dexterity, coordination, balance, and endurance), as his body constantly generates bio-kinetic energy and so is perfectly constructed for constant motion. This gives him an added edge that he has used to his advantage by developing a unique acrobatic fighting style.", pic: #imageLiteral(resourceName: "Gambit"))
    
    let EmmaFrost = Hero.init(name: "Emma Frost", bio: "Emma Frost is a mutant who possesses various telepathic talents. Emma can read minds and project her thoughts into the minds of others, project psionic force bolts which have no physical effects but which can affect a victim's mind so as to cause the victim pain or unconsciousness, and can also induce mental pain merely by touching the brow of her victim. Emma can telepathically sedate her victims so that, if already rendered unconscious, they remain so for as long as she continues to sedate them. It is unknown how effective her sedating ability is on victims who are awake.Furthermore, as a consequence of continued mutation, Emma can now transform her skin and hair into a diamond-hard form at will. In this form, Emma is nigh indestructible except for one small flaw that, if exploited, can cause her to shatter. Whilst in her diamond form, Emma's telepathic abilities are suppressed.", pic: #imageLiteral(resourceName: "Emma Frost"))
    
    let Cyclops = Hero.init(name: "Cyclops", bio: "Cyclops possesses the mutant ability to project a beam of heatless ruby-colored concussive force from his eyes, which act as inter-dimensional apertures between this universe and another. Cyclops' body constantly absorbs ambient energy, such as sunlight, from his environment into his body's cells that allows him to open the apertures. Cyclops' mind generates a psionic field that is attuned to the forces that maintain the apertures. Because this field envelops his body, it automatically shunts the other-dimensional particles back into their point of origin when they collide with his body. Thus, his body is protected from the effects of the particles, and even the thin membranes of his eyelids are sufficient to block the emission of energy. The synthetic ruby quartz crystal used to fashion the lenses of Cyclops' eyewear is resonant to his minds' psionic field and is similarly protected.The width of Cyclops' optic blast is focused by his mind's psionic field with the same autonomic function that regulated his original eyes' ability to focus. As Cyclops focuses, the size of the apertures change and thus act as a valve to control the flow of particles and the beam's relative power. The height of Cyclops's eye-blast is controlled by his visor's adjustable slit. The beam's effective range is approximately 2,000 feet.Due to a head injury, Cyclops is unable to shut off his optic blasts at will and must therefore wear ruby quartz lenses to block the beams.", pic: #imageLiteral(resourceName: "Cyclops"))
    
    let IceMan = Hero.init(name: "Ice Man", bio: "Iceman is able to lower his external and internal body temperature without harm to himself, thereby radiating intense cold from his body. Iceman is able to reach -105 degrees Fahrenheit within a few seconds, and is immune to sub-zero temperatures around him. In addition, Iceman can freeze any moisture in the air around him into unusually hard ice, and thereby form simple objects such as slides, ladders, shields, and bats. He has even once shown the ability to achieve absolute zero temperatures, with the help of the Human Torch (Johnny Storm), Human Torch (who pulled the ambient heat away from Iceman), and was able to stop the molecular motion of a bomb. Iceman can augment his ice form with extraneous moisture to enhance his strength and durability, and can reshape his body's ice form at will by using any available moisture from his surrounding environment. Similarly, Iceman can rebuild his ice form if any part of it is broken or if it is shattered completely without suffering any permanent damage.Previously, Iceman was able to transform his body into solid ice and back to human form at will. For a time, however, his body was permanently transformed into solid ice as a result of a secondary mutation. After House of M, M-day, Iceman appeared to have lost his powers, returning to Humans, human form. However, this was revealed by Frost, Emma, Emma Frost as a mental block, and Iceman later regained his powers, along with the ability to change from human to ice form.Iceman also possesses the potential to transport himself quickly over great distances through nearby flows of water by merging his body’s molecules with those of the stream", pic: #imageLiteral(resourceName: "IceMan"))
    
    let JeanGrey = Hero.init(name: "Jean Greay", bio: "Jean Grey possessed telepathic powers enabling her to read minds, project her thoughts into the minds of others, initiate astral travel, and mentally stun opponents with pure psionic force, among other talents. She also possessed telekinesis, allowing her to levitate and manipulate objects and others, generate force fields, fly, and stimulate heat molecules to generate concussive blasts.Her powers were magnified to near-infinite levels while she served as an avatar for the cosmic Phoenix Force. She was able to manipulate matter and energy on a molecular scale, although this varied on the Force's status and how much power it chose to allocate to her. ", pic: #imageLiteral(resourceName: "JeanGrey"))
    
    let NorthStar = Hero.init(name: "North Star", bio: "Northstar can move and fly at superhuman speed. He can channel a portion of the kinetic energy of the atomic motion in his body's molecules in a single direction, accelerating his body to a velocity in direct proportion to the amount of kinetic energy he has tapped. It is theoretically possible for Northstar to reach 99% of the speed of light (186,272 miles per second in a vacuum), but his inability to breathe at such speeds and the damage his body would suffer from wind and friction prevent him.As a side effect of partially robbing his molecules of their atomic motion, the binding forces within and between the molecules increase which enhances the sheer toughness of Northstar’s entire body. This effect gives his skin enough durability to withstand speeds up to at least Mach 10 without injury. Northstar can also vary the rate of acceleration of his molecules to release a cascade of photons as bright as a lighthouse beacon.", pic: #imageLiteral(resourceName: "NorthStar"))
    
    let Rogue = Hero.init(name: "Rogue", bio: "Rogue is a mutant who formerly possessed the ability to absorb the memories, abilities, personality, and outward physical characteristics of other beings through skin-to-skin contact. Such transfers lasted for 60 times longer than the contact time, with extended contact resulting in the possibility of permanent absorption. No upper limit had been determined for the number of beings Rogue could simultaneously imprint.Upon absorbing another's memories, Rogue also gained any associated emotional responses. Rogue was typically able to control such emotions, however absorbing psyches more powerful than her own resulted in Rogue’s psyche being supplanted.After permanently absorbing the powers of Ms. Marvel (Carol Danvers), Ms. Marvel, Rogue possessed an amalgamated mutant human/alien Kree physiology that granted her a degree of immunity to poisons, and a virtually indestructible body. Rogue also possessed Ms. Marvel's above normal reflexes and psychic seventh sense that enabled her to subconsciously anticipate an opponent’s moves. Whilst Rogue possessed Ms. Marvel's psyche, her double consciousness made her resistant to telepathic probes from even the most powerful mind readers. She also gained Ms. Marvel's incredible strength, and supersonic flight.After absorbing the powers of an alien Skrull, Rogue began to spontaneously reactivate previously absorbed abilities. Rogue could also tap into the residual psychic energy of those she had imprinted to determine their status and to relive past events from their perspective.Recently, Rogue has seemingly permanently absorbed the fire-based powers of Sunfire (Shiro Yoshida), Sunfire.", pic: #imageLiteral(resourceName: "Rogue"))
    
    let Storm = Hero.init(name: "Storm", bio: "Storm (Ororo Monroe) is the descendant of an ancient line of African priestesses, all of whom have white hair, blue eyes, and the potential to wield magic. Xavier explained to Ororo that she was not a goddess, but a mutant, and as such she had a responsibility to use her abilities to help the world just as she had helped the local tribes. Curious, Ororo accepted Xavier's offer, and was given the codename Storm.", pic: #imageLiteral(resourceName: "Storm"))
    
    let Wolverine = Hero.init(name: "Wolverine", bio: "Wolverine is a mutant who possesses the ability to regenerate damaged or destroyed areas of his cellular structure at a rate far greater than that of an ordinary human. The speed at which this healing factor works varies in direct proportion with the severity of the damage Wolverine suffers. For example, he can fully recover from an ordinary gunshot wound in a non-vital area of his body within minutes, but it took him almost two months to fully recover from injuries sustained in a duel with Lord Shingen, which included one from a sword that went all the way through his trunk.Wolverine’s natural healing also affords him virtual immunity to poisons and most drugs, as well as an enhanced resistance to diseases. For example, it is nearly impossible for him to become intoxicated from drinking alcohol. He also has a limited immunity to the fatigue poisons generated by bodily activity, and hence he has greater endurance than an ordinary human. His agility and reflexes are similarly enhanced.In addition, Wolverine’s healing factor provides him with an extended lifespan by slowing the effects of the aging process. Although over a century old, Wolverine is as healthy and physically fit as a man in his prime.Wolverine also possesses superhumanly acute senses, making him capable of seeing things at a maximum distance greater than a normal human’s. His hearing is enhanced in a similar manner, and he is able to recognize people and objects by scent, even if that person or object is hidden. Wolverine can use these enhanced senses to track any creature with an impressive degree of success.Wolverine’s skeleton includes six retractable one-foot long bone claws, three in each arm, that are housed beneath the skin and muscle of his forearms. Wolverine can, at will, release these slightly curved claws through his skin beneath the knuckles on each hand. The skin between the knuckles tears and bleeds, but the blood loss is quickly halted by his healing factor. Wolverine can unsheathe any number of his claws at once, although he must keep his wrists straight at the moment his claws shoot from his forearms into his hands. When unsheathed, the claws are fully within his hands, and thus Wolverine can still bend his wrists. The claws are naturally sharp and tougher than that of normal human bone structure, allowing Wolverine to cut through most types of flesh and natural materials.Despite the extent of his healing factor, Wolverine is not immortal. If the injuries are extensive enough, especially if they result in the loss of vital organs, large amounts of blood, and/or loss of physical form, such as having flesh burned away by fire or acid, Wolverine can die.", pic: #imageLiteral(resourceName: "Wolverine"))
    
   
    
    
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
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = storyboard?.instantiateViewController(withIdentifier: "XMenHeroController") as! XMenHeroController
        
        detailController.detailImage = XMenHeroes[indexPath.row].pic
        
        showDetailViewController(detailController, sender: collectionView)
        
        //navigationController?.show(detailController, sender: CardViewController.self)
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

