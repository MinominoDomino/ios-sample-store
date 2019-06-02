//
//  CustomSegueUnwind.swift
//  UnwindAndCustomSegue
//
//  Created by Domino on 02/06/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class CustomSegueUnwind: UIStoryboardSegue {
    override func perform() {
        var frame = source.view.frame
        frame = frame.offsetBy(dx: 0, dy: frame.height)
        
        UIView.animate(withDuration: 0.3, animations: {
            self.source.view.frame = frame
            self.source.view.alpha = 0.0
        }, completion: { finished in
            self.source.view.removeFromSuperview()
            self.source.removeFromParent()
        })
    }
}
