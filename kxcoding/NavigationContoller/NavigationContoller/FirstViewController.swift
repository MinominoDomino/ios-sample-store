//
//  FirstViewController.swift
//  NavigationContoller
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func switcherButton(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
            if var list = navigationItem.rightBarButtonItems {
                let button = UIBarButtonItem(title: "Item", style: .plain, target: nil, action: nil)
                list.append(button)
                navigationItem.rightBarButtonItems = list
            }
        case false:
            navigationItem.leftBarButtonItem = nil
            let list = navigationItem.rightBarButtonItems?.dropLast()
            navigationItem.rightBarButtonItems = Array(list!)
        }
    }
    @IBAction func codeButton(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") else {
            return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func mainButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.backBarButtonItem?.title = "뒤로가즈아"
    }
    
    @IBAction func unwindToFirstView(_ unwindSegue: UIStoryboardSegue) {
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
