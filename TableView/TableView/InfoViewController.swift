//
//  InfoViewController.swift
//  TableView
//
//  Created by Domino on 06/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var textToSet: String?
    @IBOutlet weak var textName: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.textName?.text = self.textToSet
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
