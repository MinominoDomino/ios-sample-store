//
//  ViewController.swift
//  ActionSheetAndAlertEx
//
//  Created by Domino on 13/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tuchUpActionSheetExcuteButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: "공유하기", message: "어디로 공유할까요?", preferredStyle: .actionSheet)
        let actionSheetDefault = UIAlertAction(title: "가가오톡", style: .default, handler: { (action) in
            print("ActionSheet Default Pressed")
        })
        let actionSheetDestructive = UIAlertAction(title: "라잉", style: .destructive, handler: { (action) in
            print("ActionSheet Destructive Pressed")
        })
        let actionSheetCancel = UIAlertAction(title: "공유 취소", style: .cancel, handler: nil)
        
        actionSheet.addAction(actionSheetDefault)
        actionSheet.addAction(actionSheetDestructive)
        actionSheet.addAction(actionSheetCancel)
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func TouchUpAlertExcuteButton(_ sender: Any) {
        let alert = UIAlertController(title: "상태경고", message: "네트워크가 불안정합니다.", preferredStyle: .alert)
        
        
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: { (ACTION) in
            print("Alert Cancel Pressed")
        })
        
        let actionDefault = UIAlertAction(title: "다시시도", style: .default, handler: { (action) in
            print("Alert Default Pressed")
        })
        let actionDestructive = UIAlertAction(title: "재시작", style: .destructive, handler: {(action) in
            print("Alert Destructive Pressed")
        })
        
        alert.addAction(actionDefault)
        alert.addAction(actionDestructive)
        alert.addAction(actionCancel)
        
        self.present(alert, animated: true, completion: {
            print("Present UI")
        })
    }
}

