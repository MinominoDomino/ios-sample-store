//
//  MainViewController.swift
//  TabBarController
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func codeButton(_ sender: Any) {
        guard let first = storyboard?.instantiateViewController(withIdentifier: "FirstViewController") else { return }
        guard let second = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else { return }
        guard let third = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") else { return }
        guard let fourth = storyboard?.instantiateViewController(withIdentifier: "FourthViewController") else { return }
        
        let tb = UITabBarController()
        tb.setViewControllers([first, second, third, fourth], animated: true)
        present(tb, animated: true, completion: nil)
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
