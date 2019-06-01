//
//  View3Controller.swift
//  UnwindAndCustomSegue
//
//  Created by Domino on 01/06/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class View3Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print(#function, type(of: self))
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(#function, type(of: self))
    }


}
