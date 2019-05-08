//
//  ViewController.swift
//  UIDatePickerEx
//
//  Created by Domino on 08/05/2019.
//  Copyright © 2019 MinominoDomino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    @IBOutlet weak var datePickerLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var dateStylePicker: UIPickerView!
    
    let formatter: DateFormatter = DateFormatter()
    let pickerStyle: [String] = ["none", "short", "medium", "long", "full"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerStyle.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerStyle[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if (component == 0) {
            formatter.dateStyle = DateFormatter.Style(rawValue: UInt(row))!
        } else {
            formatter.timeStyle = DateFormatter.Style(rawValue: UInt(row))!
        }
        datePickerLabel.text = nil
        self.viewDidLoad()
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let date = formatter.string(from: sender.date)
        datePickerLabel.text = date
    }
    
    @IBAction func touchUpChangeModeButton(_ sender: UIButton) {
        switch myDatePicker.datePickerMode {
        case .countDownTimer:
            myDatePicker.datePickerMode = .date
        case .date:
            myDatePicker.datePickerMode = .dateAndTime
        case .dateAndTime:
            myDatePicker.datePickerMode = .time
        case .time:
            myDatePicker.datePickerMode = .countDownTimer
        default:
            print("error")
        }
        self.viewDidLoad()
    }
}

