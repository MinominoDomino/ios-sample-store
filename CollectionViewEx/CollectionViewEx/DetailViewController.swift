//
//  DetailViewController.swift
//  CollectionViewEx
//
//  Created by Domino on 15/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var rgbNumber: String = ""
    @IBOutlet weak var colorRGB: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorRGB?.text = rgbNumber
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
 

}

extension DetailViewController: SendDataDelegate {
    func sendData(data: String) {
        colorRGB?.text = data
    }
}
