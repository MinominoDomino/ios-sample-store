//
//  SecondViewController.swift
//  NavigationContoller
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @objc func addBarButtonItems() {
        let btn1 = UIBarButtonItem(barButtonSystemItem: .action, target: nil, action: nil)
        let btn2 = UIBarButtonItem(title: "New", style: .plain, target: nil, action: nil)
        let switcher = UIBarButtonItem(customView: UISwitch())
        navigationItem.setRightBarButtonItems([switcher, btn2, btn1], animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationItem.leftItemsSupplementBackButton = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtonItems))
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
