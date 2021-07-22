//
//  CalculatorViewController.swift
//  final project
//
//  Created by Celine Huang on 2021-07-21.
//

import UIKit

class CalculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBOutlet weak var originalItemPrice: UITextField!
    
    @IBOutlet weak var discountTextField: UITextField!


    @IBOutlet weak var taxRateTextField: UITextField!
    @IBOutlet weak var subtotalLabel: UILabel!
    
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        let discountAmount = (Double(discountTextField.text!)! / 100)
        let taxAmount = (Double(taxRateTextField.text!)! / 100)
        let originalPrice = Double(originalItemPrice.text!)!
        let subtotal = (originalPrice - (discountAmount * originalPrice)) * (taxAmount + 1)
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        let subtotalRounded = formatter.string(from: subtotal as NSNumber)!
        subtotalLabel.text = "$\(subtotalRounded)"
    }
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
