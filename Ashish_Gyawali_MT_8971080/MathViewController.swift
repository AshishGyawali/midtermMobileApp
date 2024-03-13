//
//  MathViewController.swift
//  Ashish_Gyawali_MT_8971080
//
//  Created by Ashish Gyawali on 2024-03-12.
//

import UIKit


class MathViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var value: UILabel!
    @IBOutlet weak var valueOfC: UITextField!
    @IBOutlet weak var valueOfB: UITextField!
    @IBOutlet weak var valueOfA: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        valueOfA.delegate = self
        valueOfB.delegate = self
        valueOfC.delegate = self
    }
    
    @IBAction func calculateValue(_ sender: Any) {
        // checking if the input value is null
        guard let textA = valueOfA.text, !textA.isEmpty,
              let textB = valueOfB.text, !textB.isEmpty,
              let textC = valueOfC.text, !textC.isEmpty else {
                    message.text = "Enter a value for A, B and C to find X."
                    message.textColor = UIColor.red
                    return
                }
                
        // checking if the value of a is double and not equals to 0
        guard let a = Double(textA), a != 0 else {
            message.text = "The value you entered for A is invalid."
            message.textColor = UIColor.red
            return
        }
        
        // checking if the value of b is double
        guard let b = Double(textB) else {
            message.text = "The value you entered for A is invalid."
            message.textColor = UIColor.red
            return
        }
        
        // checking if the value of c is double
        guard let c = Double(textC) else {
            message.text = "The value you entered for A is invalid."
            message.textColor = UIColor.red
            return
        }
        
        // calculating the discriminant
        let discriminant = b * b - 4 * a * c
        
        // Checking if roots are real
        if discriminant > 0 {
            let root1 = (-b + sqrt(discriminant)) / (2 * a)
            let root2 = (-b - sqrt(discriminant)) / (2 * a)
            message.text = "There are two values for X"
            message.textColor = UIColor(red: 31/255.0, green: 107/255.0, blue: 70/255.0, alpha: 1)
            value.text = "Value 1 = "+String(format: "%.2f",root1)+" Value 2 = "+String(format: "%.2f",root2)
        } else if discriminant == 0 {
            let root = -b / (2 * a)
            message.text = "There is only one value for X"
            message.textColor = UIColor(red: 31/255.0, green: 107/255.0, blue: 70/255.0, alpha: 1)
            value.text = "Value of x = "+String(format: "%.2f",root)
        } else {
            message.text = "There are no results since the discriminant is less than zero"
            message.textColor = UIColor.red
        }
    }
    
    @IBAction func clearValue(_ sender: Any) {
        valueOfA.text = ""
        valueOfB.text = ""
        valueOfC.text = ""
        message.text = ""
        value.text = ""
    }
    
    
    // dismiss the keyboard on pressing outside of text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        valueOfA.resignFirstResponder()
        valueOfB.resignFirstResponder()
        valueOfC.resignFirstResponder()
    }
    
}


// dismiss the keyboard on pressing enter
extension MathViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


