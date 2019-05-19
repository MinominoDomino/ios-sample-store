//
//  SecondViewController.swift
//  NavigationContoller
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func codeButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") else { return }
        navigationController?.pushViewController(vc, animated: true)
        
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
