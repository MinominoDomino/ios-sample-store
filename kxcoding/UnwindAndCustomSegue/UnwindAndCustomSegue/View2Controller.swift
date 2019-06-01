//
//  View2Controller.swift
//  UnwindAndCustomSegue
//
//  Created by Domino on 01/06/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class View2Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToView2(_ unwindSegue: UIStoryboardSegue) {
         print(#function, type(of: unwindSegue.source), "->", type(of: unwindSegue.destination))
    }
    
    override func canPerformUnwindSegueAction(_ action: Selector, from fromViewController: UIViewController, withSender sender: Any) -> Bool {
        print(#function, type(of: self))
        return true
    }

}
