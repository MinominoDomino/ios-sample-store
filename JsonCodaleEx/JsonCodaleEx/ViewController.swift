//
//  ViewController.swift
//  JsonCodaleEx
//
//  Created by Domino on 06/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    var person: [PersonInfo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let decoder: JSONDecoder = JSONDecoder()
        
        do {
            self.person = try decoder.decode([PersonInfo].self, from: jsonString)
        } catch {
            print(error.localizedDescription)
        }
        
        self.myTableView.reloadData()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = person[indexPath.row].infoStr
        cell.detailTextLabel?.text = person[indexPath.row].addressStr
        return cell
    }


}

