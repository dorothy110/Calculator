//
//  ViewController.swift
//  Prework
//
//  Created by Dorothy on 2022/7/16.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipAmountLabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var TotalLabel: UILabel!

    @IBOutlet weak var SliderControl: UISlider!
    @IBOutlet weak var SlideValue: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }

    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(BillAmountTextField.text!) ?? 0
        let tipPercentagess = [0.15,0.18,0.2]
        let tip = bill * tipPercentagess[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        TipAmountLabel.text = String(format: "$%.2f",tip)
        TotalLabel.text = String(format: "$%.2f",total)
    }
    

    @IBAction func CalculateSliderTip(_ sender: UISlider) {
        let value = sender.value
        SlideValue.text = "\(value * 100)%"
        let bill = Double(BillAmountTextField.text!) ?? 0
        let tip = bill * CGFloat(value)
        let total = bill + tip
        TipAmountLabel.text = String(format: "$%.2f",tip)
        TotalLabel.text = String(format: "$%.2f",total)
    }
    
    
    
    @IBAction func BackgroundColor(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = .white
        }
        else if sender.selectedSegmentIndex == 1 {
            view.backgroundColor = .yellow
        }
    }
    
}

