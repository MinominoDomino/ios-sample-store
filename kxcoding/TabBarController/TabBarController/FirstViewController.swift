//
//  FirstViewController.swift
//  TabBarController
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveSecondButton(_ sender: Any) {
        guard let second = tabBarController?.viewControllers?[1] else { return }
        tabBarController?.selectedViewController = second
    }
    
    @IBAction func moveThirdButton(_ sender: Any) {
        tabBarController?.selectedIndex = 2
    }
    
    @IBAction func moveFourthButton(_ sender: Any) {
        
    }

}
