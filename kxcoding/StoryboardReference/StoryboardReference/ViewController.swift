//
//  ViewController.swift
//  StoryboardReference
//
//  Created by Domino on 20/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func moveSecondButton(_ sender: Any) {
      //  guard let second = storyboard?.instantiateViewController(withIdentifier: "secondViewController") else { return }
      //  present(second, animated: true, completion: nil)
        
        let sub = UIStoryboard(name: "Sub", bundle: nil)
        let second = sub.instantiateViewController(withIdentifier: "secondViewController")
        present(second, animated: true, completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

