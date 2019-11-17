//
//  ViewController.swift
//  DatePicker
//
//  Created by jabeed on 07/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var comp = NSDateComponents()

    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getDate(_ sender: Any) {

        let dateFormate = DateFormatter()
        //dateFormate.dateFormat = "dd-MM-yyyy"
        dateFormate.dateStyle = DateFormatter.Style.medium
        dateFormate.timeStyle = DateFormatter.Style.short
        let strDate = dateFormate.string(from: datePicker.date)
        dateLabel.text = strDate
        dateLabel.textColor = .green
        self.datePicker.backgroundColor  = .red


//        dateLabel.text = "\(datePicker.date)"
    }
}

