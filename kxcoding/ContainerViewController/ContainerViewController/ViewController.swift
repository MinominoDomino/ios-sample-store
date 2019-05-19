//
//  ViewController.swift
//  ContainerViewController
//
//  Created by Domino on 19/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bottomContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        guard let bottomView = storyboard?.instantiateViewController(withIdentifier: "BottomContainerView") else { return }
        addChild(bottomView)
        //bottomView.didMove(toParent: self)
        bottomView.view.frame = bottomContainerView.bounds
        bottomContainerView.addSubview(bottomView.view)
    }

    @IBAction func childRemoveButton(_ sender: Any) {
        for vc in children {
           // vc.willMove(toParent: nil)
            vc.view.removeFromSuperview()
            vc.removeFromParent()
        }
    }
}

