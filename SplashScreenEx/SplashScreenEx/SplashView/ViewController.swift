//
//  ViewController.swift
//  SplashScreenEx
//
//  Created by Domino on 11/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if(DeviceManager.shared.networkStuta) {
            
        } else {
            
            let alert: UIAlertController
            let action: UIAlertAction = UIAlertAction(title: "다시 시도", style: .default, handler: { (ACTION) in
                
            })
            
        }
    }
}

