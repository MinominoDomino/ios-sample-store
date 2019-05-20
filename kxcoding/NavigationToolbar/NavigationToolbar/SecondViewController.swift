//
//  SecondViewController.swift
//  NavigationToolbar
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func toggleButton(_ sender: Any) {
        let toolbarHidden = navigationController?.isToolbarHidden ?? false
        navigationController?.setToolbarHidden(!toolbarHidden, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let barItem1 = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
        let barItem2 = UIBarButtonItem(barButtonSystemItem: .cancel, target: nil, action: nil)
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        setToolbarItems([flexibleSpace, barItem1, flexibleSpace, barItem2, flexibleSpace], animated: true)
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
