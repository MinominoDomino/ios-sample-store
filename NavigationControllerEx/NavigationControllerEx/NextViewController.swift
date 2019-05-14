//
//  NextViewController.swift
//  NavigationControllerEx
//
//  Created by Domino on 15/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveNextViewWithNavigation(_ sender: Any) {
        guard let nextView = self.storyboard?.instantiateViewController(withIdentifier: "NextView") else {
            return
        }
        
        self.navigationController?.pushViewController(nextView, animated: true)
    }
    @IBAction func moveNextView(_ sender: Any) {
        guard let nextView = self.storyboard?.instantiateViewController(withIdentifier: "NextView") else {
            return
        }
        present(nextView, animated: true, completion: nil)
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
