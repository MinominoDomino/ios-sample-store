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
       checkDeviceNetworkStatus()
    }
    
    func checkDeviceNetworkStatus() {
        if(DeviceManager.shared.networkStatus) {
            let firstVC = UIStoryboard(name: "First", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController")
            present(firstVC, animated: true, completion: nil)
        } else {
            let alert: UIAlertController = UIAlertController(title: "네트워크 상태 확인", message: "네트워크가 불안정 합니다.", preferredStyle: .alert)
            let action: UIAlertAction = UIAlertAction(title: "다시 시도", style: .default, handler: { (action) in
                self.checkDeviceNetworkStatus()
            })
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        }
    }
}

