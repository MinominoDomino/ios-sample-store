//
//  DetailViewController.swift
//  CollectionViewEx
//
//  Created by Domino on 15/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var segueValue = ""
    @IBOutlet weak var colorRGB: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorRGB?.text = segueValue
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
}
