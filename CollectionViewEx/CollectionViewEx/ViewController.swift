//
//  ViewController.swift
//  CollectionViewEx
//
//  Created by Domino on 08/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var MyCollectionView: UICollectionView!
    @IBOutlet weak var sectionTop: UITextField!
    @IBOutlet weak var sectionLeft: UITextField!
    @IBOutlet weak var sectionRight: UITextField!
    @IBOutlet weak var sectionBott: UITextField!
    @IBOutlet weak var spacingCells: UITextField!
    @IBOutlet weak var spacingLines: UITextField!
    
    var colorList = [0x9966ff,0x33ff00,0x442345,0xff33ff44,0x342598,0xcc33cc,0xffcc33,0xb431ff,0xff00e6,0x9c6300,0x636331,0x344802,0x123453,0x580034,0x380233
        ,0x9c6331,0xff639c,0xff63ce,0xff63ff,0xff9c00,0xff9c31,0xff9c63,0xff9c9c,0xff9cce,0xff9cff,0xffce00,0xffce31,0xffce63]
    var collectionList: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for rgb in colorList {
            self.collectionList.append(UIColor.colorWithRGBHex(hex: rgb))
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CustomCollectionViewCell else {
            print(fatalError())
        }
        
        cell.cellLabel?.text = String(format: "%02X", colorList[indexPath.row])
        cell.backgroundColor = collectionList[indexPath.row]
        return cell
    }
    
    @IBAction func layoutDirection(_ sender: UISegmentedControl) {
        let flowLayout = MyCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
    
        switch sender.selectedSegmentIndex {
        case 0:
            MyCollectionView.performBatchUpdates( {flowLayout?.scrollDirection = .vertical}, completion: nil)
        case 1:
            MyCollectionView.performBatchUpdates( {flowLayout?.scrollDirection = .horizontal}, completion: nil)
        default:
            print("")
        }
    }

    @IBAction func setButton(_ sender: Any) {
        let layout = MyCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
        let top = getFloatValue(string: sectionTop.text)
        let bottom = getFloatValue(string: sectionBott.text)
        let left = getFloatValue(string: sectionLeft.text)
        let right = getFloatValue(string: sectionRight.text)
        let line = getFloatValue(string: spacingLines.text)
        let cell = getFloatValue(string: spacingCells.text)
        layout?.sectionInset = UIEdgeInsets(top: CGFloat(top), left: CGFloat(left), bottom: CGFloat(bottom), right: CGFloat(right))
        layout?.minimumLineSpacing = CGFloat(line)
        layout?.minimumInteritemSpacing = CGFloat(cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? CustomCollectionViewCell,
            let indexPath = MyCollectionView.indexPath(for: cell) {
            let vc = segue.destination as? DetailViewController
            vc?.segueValue = String(format: "%02x", colorList[indexPath.row])
        }
    }
    
    func getFloatValue(string: String?) -> Float {
        let NBFormatter: NumberFormatter = NumberFormatter()
        NBFormatter.numberStyle = .decimal
        
        let value = NBFormatter.number(from: string!)
        return value == nil ? 0.0 : value!.floatValue
    }
    
}
extension UIColor {
    class func colorWithRGBHex(hex: Int, alpha: Float = 1.0) -> UIColor {
        let r = Float((hex >> 16) & 0xFF)
        let g = Float((hex >> 8) & 0xFF)
        let b = Float((hex) & 0xFF)
        
        return UIColor(red: CGFloat(r / 255.0), green: CGFloat(g / 255.0), blue:CGFloat(b / 255.0), alpha: CGFloat(alpha))
    }
}
