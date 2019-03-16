//
//  API.swift
//  Marvel Universe Characters
//
//  Created by user on 1/3/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit


class Networking {
    
    var MarvelInfo = [Any]()
    
    let baseURL = "http://gateway.marvel.com/v1/public/characters?ts=1&"
    let publicKey = "apikey=6ca44bca53b6832171ee8b37947a8697&"
    let privateKey = ""
    let hash = "hash=557323f110756c55c73d9d7f0d455ec9"
    let characterName = ("name=\(heroSelected)&").replacingOccurrences(of: " ", with: "%20")
    
    func getMarvelData() {
        
        let characterURL = URL(string:"\(baseURL)\(characterName)\(publicKey)\(hash)")
        print(characterURL!)
        let session = URLSession.shared
        let task = session.dataTask(with: characterURL!) { (data, response, error) in
            print("Start")
            guard let marvelData = data else {return}
            
            do {
                
                let jsonData = try JSONSerialization.jsonObject(with: marvelData, options: [])
                print(jsonData)
                self.MarvelInfo = [jsonData]
                
            } catch {
                
                print(error)
            }
        }
        task.resume()
    }
    
    
}
