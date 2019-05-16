//
//  DetailViewController.swift
//  CollectionViewEx
//
//  Created by Domino on 15/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var colorRGB: UILabel?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("view Did Load")
        colorRGB?.text = "didload"
        print("\(colorRGB?.text) in didload")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view Will Appear")
        print("\(colorRGB?.text) in appear")
        //colorRGB?.text = "appear"
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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

extension DetailViewController: SendDataDelegate {
    func sendData(data: String) {
        colorRGB?.text = data
    }
}
