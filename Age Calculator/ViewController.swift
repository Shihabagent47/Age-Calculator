//
//  ViewController.swift
//  Age Calculator
//
//  Created by Shihab Hossain on 5/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ageTextView: UILabel!
    @IBOutlet weak var dateTimePicker: UIDatePicker!
    @IBOutlet weak var todaysDatePicker: UIDatePicker!
    
    
    func computeNewDate( fromDate: Date, toDate: Date) -> String  {
         let delta = toDate.timeIntervalSince(fromDate)
        
        var numyears = floor(delta / 31536000)
        var numdays = floor((delta.truncatingRemainder(dividingBy: 31536000)) / 86400)
        
        
        var numhours = floor(((delta.truncatingRemainder(dividingBy: 31536000) ).truncatingRemainder(dividingBy: 86400)) / 3600)
        
//
//       var numminutes = floor((((delta % 31536000) % 86400) % 3600) / 60)
//
//
//
//       var numseconds = (((delta % 31536000) % 86400) % 3600) % 60

        
        //        return numyears + " years " +  numdays + " days " + numhours + " hours " + numminutes + " minutes " + numseconds + " seconds"
        
        return "\(Int(numyears)) Years \(Int(numdays)) Days \(Int(numhours)) Hour"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateTimePicker.contentHorizontalAlignment = .center
        todaysDatePicker.contentHorizontalAlignment = .center
        
        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
   
        
        ageTextView.text="\(computeNewDate(fromDate:dateTimePicker.date, toDate: todaysDatePicker.date))"
    }
    
    
}

