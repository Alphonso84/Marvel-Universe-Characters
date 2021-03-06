//
//  Controller.swift
//  Marvel Universe Characters
//
//  Created by user on 3/15/19.
//  Copyright © 2019 Alphonso. All rights reserved.
//

import Foundation
import UIKit

var Avengers = [Hero]()
var Xmen = [Hero]()
var Guardians = [Hero]()
var FantasticFour = [Hero]()

class Controller:UITabBarController {
    
    @IBOutlet weak var myTabBar: UITabBar!
    
    func getHeroArray(stringForHeroesArray:String) -> [Hero] {
       
        Avengers.append(CaptAmerica)
        Avengers.append(Thor)
        Avengers.append(Spiderman)
        Avengers.append(BlackPanther)
        Avengers.append(Hulk)
        Avengers.append(Ironman)
        Avengers.append(Falcon)
        Avengers.append(HawkEye)
        Avengers.append(BlackWidow)
        Xmen.append(Angel)
        Xmen.append(Beast)
        Xmen.append(Colossus)
        Xmen.append(Gambit)
        Xmen.append(EmmaFrost)
        Xmen.append(IceMan)
        Xmen.append(JeanGrey)
        Xmen.append(NorthStar)
        Xmen.append(Rogue)
        Xmen.append(Storm)
        Xmen.append(Wolverine)
        Guardians.append(Groot)
        Guardians.append(Drax)
        Guardians.append(Rocket)
        Guardians.append(StarLord)
        Guardians.append(Gamora)
        FantasticFour.append(Thing)
        FantasticFour.append(HumanTorch)
        FantasticFour.append(InvisibleWoman)
        FantasticFour.append(MrFantastic)
        
        switch stringForHeroesArray {
        case "Avengers":
            return Avengers
        case "Xmen":
            return Xmen
        case "Guardians":
            return Guardians
        case "FantasticFour":
            return FantasticFour
        default:
            return Avengers
        }
       
    }
    
    
    
    
    
}
