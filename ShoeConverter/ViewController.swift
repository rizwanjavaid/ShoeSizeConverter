//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Rizwan Javaid on 10/5/14.
//  Copyright (c) 2014 Rizwan Javaid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var labelForConvertedSize: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        // Capture the shoe size input from the text field
        let sizeFromTextField = mensShoeSizeTextField.text
        
        // Convert the captured shoes size to an optional using the toInt() function
        let numberFromTextField = sizeFromTextField.toInt()
        
        // Convert the optional to an Int
        var integerFromTextField = numberFromTextField!
        
        // Setup a constant to store the conversion between the US and European shoe sizes
        let conversionConstant = 30
        
        // Update the value
        integerFromTextField += conversionConstant
        
        // Unhide the converted label
        mensConvertedShoeSizeLabel.hidden = false
        labelForConvertedSize.hidden = false
        
        // Convert the integer to a string
        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
        
        // Update the converted label with the calculated shoe size
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        
        
        
        
        
        
    }

}

