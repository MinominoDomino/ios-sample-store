//
//  ViewController.swift
//  CollectionViewLayoutEx
//
//  Created by Domino on 12/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    @IBOutlet weak var toggleButton: UISegmentedControl!
    @IBAction func changeValue(_ sender: UISegmentedControl) {
        let layout = myCollectionView.collectionViewLayout as? UICollectionViewFlowLayout
        switch sender.selectedSegmentIndex {
        case 0:
            myCollectionView.performBatchUpdates({ layout?.scrollDirection = .vertical } , completion: nil)
        case 1:
            myCollectionView.performBatchUpdates({ layout?.scrollDirection = .horizontal } , completion: nil)
        default:
            print("error")
        }
    }
    
    var colorAr = [UIColor.red, UIColor.yellow, UIColor.blue, UIColor.black, UIColor.gray, UIColor.green, UIColor.purple, UIColor.darkGray,
    UIColor.brown, UIColor.cyan, UIColor.orange, UIColor.init(red: 30, green: 40, blue: 30, alpha: 40)]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorAr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        cell.backgroundColor = colorAr[indexPath.row]
        return cell
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let layout = myCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: 100, height: 100)
            layout.minimumLineSpacing = 10
            layout.minimumInteritemSpacing = 10
            
            layout.sectionInset = UIEdgeInsets(top: 40, left: 20, bottom: 40, right: 20)
        }
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        guard let flowLayout = collectionView as? UICollectionViewFlowLayout else {
            return CGSize.zero
        }
        var bounds = collectionView.bounds
        bounds.size.height += bounds.origin.y
        
        var width = bounds.width - (flowLayout.sectionInset.left + flowLayout.sectionInset.right)
        var height = bounds.height - (flowLayout.sectionInset.top + flowLayout.sectionInset.bottom)
        
        switch flowLayout.scrollDirection {
        case .vertical:
            height = (height - (flowLayout.minimumLineSpacing * 4)) / 5
            if indexPath.item > 0 {
                width = (width - (flowLayout.minimumInteritemSpacing * 2)) / 3
            }
        case .horizontal:
            width = (width - (flowLayout.minimumLineSpacing * 2)) / 3
            if indexPath.item > 0 {
                height = (height - (flowLayout.minimumInteritemSpacing * 4)) / 5
            }
        default:
            return CGSize.zero
        }
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        //컬렉션뷰가 셀사이 여백을 계산할떄 부름
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        myCollectionView.performBatchUpdates({ layout?.scrollDirection = .vertical } , completion: nil)
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
}

