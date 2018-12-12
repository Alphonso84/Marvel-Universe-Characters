//
//  API.swift
//  Marvel Universe Characters
//
//  Created by user on 1/3/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit


class networking {
    
    
    
    var apiHash: String = ""
    
    let baseURL = "http://gateway.marvel.com/v1/public/characters?ts=1&apiKey="
    let publicKey = "6ca44bca53b6832171ee8b37947a8697&"
    let privateKey = ""
    let hash = "557323f110756c55c73d9d7f0d455ec9"
    
    func getMarvelData() {
        let characterURL = "\(baseURL)\(publicKey)\(hash)"
    }
  
    
}
