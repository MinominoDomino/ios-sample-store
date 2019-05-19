//
//  BottomViewController.swift
//  ContainerViewController
//
//  Created by Domino on 19/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class BottomViewController: UIViewController {

    @IBAction func removeViewButton(_ sender: Any) {
        view.removeFromSuperview()
        removeFromParent()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func willMove(toParent parent: UIViewController?) {
        super.willMove(toParent: parent)
        print("Will Move in BottomView")
    }
    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        print("did Move in BottomView")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
