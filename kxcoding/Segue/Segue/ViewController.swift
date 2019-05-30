//
//  ViewController.swift
//  Segue
//
//  Created by Domino on 30/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var checkerSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fromCodeButton(_ sender: Any) {
        performSegue(withIdentifier: "ManualSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else {
            return
        }
        secondVC.id = segue.identifier
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "ControllSegue" {
            return checkerSwitch.isOn
        }
        return true
    }
    
}

