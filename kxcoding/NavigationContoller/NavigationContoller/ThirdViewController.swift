//
//  ThirdViewController.swift
//  NavigationContoller
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func goFirstButton(_ sender: Any) {
        guard let firstView = navigationController?.viewControllers.first(where: { $0 is FirstViewController }) else { return }
        navigationController?.popToViewController(firstView, animated: true)
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
