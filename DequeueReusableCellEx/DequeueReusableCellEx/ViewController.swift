//
//  ViewController.swift
//  DequeueReusableCellEx
//
//  Created by Domino on 06/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var list: [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W", "X","Y","Z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = list[indexPath.row]
        
        if indexPath.row == 3 {
            cell.backgroundColor = .blue
        }
        
        return cell
    }
}

