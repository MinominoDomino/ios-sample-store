//
//  ViewController.swift
//  NetworkStatusCheckEx
//
//  Created by Domino on 11/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //let DeviceChecker: DeviceConfigSet = DeviceConfigSet()
        
        
        
        
        if (DeviceChecker.isDeviceNetworkStatusEnable()) {
            print("true")
        } else {
            print("false")
        }
    }


}

