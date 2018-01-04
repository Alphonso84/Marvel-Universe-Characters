//
//  MenuView.swift
//  Marvel Universe Characters
//
//  Created by user on 1/4/18.
//  Copyright © 2018 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class MenuView: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var HeroTeamView: UITableView!
    var HeroTeams = ["AVENGERS","FANTASTIC FOUR"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HeroTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuViewCell
             cell = 
         
        return cell
    }
    
    
    
    
    
    override func viewDidLoad() {
        
    }
    
    
}
