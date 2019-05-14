//
//  LastViewController.swift
//  NavigationControllerEx
//
//  Created by Domino on 15/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func movePreview(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    
        //self.navigationController?.popViewController(animated: true)
        
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
