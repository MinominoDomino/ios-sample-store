//
//  ViewController.swift
//  AsyncEx
//
//  Created by Domino on 07/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    @IBAction func downloadBtnTouchUp(_ sender: UIButton) {
        imageView.image = nil
      
        /*
        if let imageUrl: URL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/3/3d/LARGE_elevation.jpg") {
            do {
                let imageData: Data = try Data(contentsOf: imageUrl)
                if let image: UIImage = UIImage(data: imageData) {
                    self.imageView.image = image
                }
            }  catch {
                print(error.localizedDescription)
            }
        }
 */
        if let imageUrl: URL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/3/3d/LARGE_elevation.jpg") {
            OperationQueue().addOperation {
                do {
                    let imageData: Data = try Data(contentsOf: imageUrl)
                    if let image: UIImage = UIImage(data: imageData) {
                        OperationQueue.main.addOperation {
                            self.imageView.image = image
                        }
                    } else { return }
                } catch {
                    print(error.localizedDescription)
                }
            }
        } else { return }
    }
    
    @IBAction func addPlusBtnTouchUp(_ sender: Any) {
        var count: Int = 0
        if let text = countLabel.text{
            if let value = Int(text) {
                count = value+1
            } else { return }
        } else { return }
        
        countLabel.text = String(count)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

