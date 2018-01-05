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
    @IBOutlet weak var shield: UIImageView!
    
    @IBOutlet weak var HeroTeamView: UITableView!
    var HeroTeams = ["AVENGERS","FANTASTIC FOUR","GAURDIANS","X-MEN"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HeroTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuViewCell
             cell.cellImage.image = #imageLiteral(resourceName: "AvengersCellBackGround")
             cell.cellLabel.text = HeroTeams[indexPath.row]
         
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = storyboard?.instantiateViewController(withIdentifier: "Avengers") as! CardViewController
        
        show(detailController, sender: tableView)
    }
    
    
    
    
    
    override func viewDidLoad() {
        
    }
    
    
}
