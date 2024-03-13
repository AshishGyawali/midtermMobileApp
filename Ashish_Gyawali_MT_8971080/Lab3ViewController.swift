//
//  Lab3ViewController.swift
//  Ashish_Gyawali_MT_8971080
//
//  Created by Ashish Gyawali on 2024-03-13.
//

import UIKit

class Lab3ViewController: UIViewController {

    @IBOutlet weak var informationField: UILabel!
    @IBOutlet weak var displayOutput: UITextView!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var firstNameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        firstNameField.delegate = self
        lastNameField.delegate = self
        countryField.delegate = self
        ageField.delegate = self
    }
    

    @IBAction func addBtnPressed(_ sender: Any) {
        displayOutput.text = "Full Name: \(firstNameField.text!) \(lastNameField.text!)\nCountry: \(countryField.text!)\nAge: \(ageField.text!)"
    }
    

    @IBAction func submitBtnPressed(_ sender: Any) {
        // checking if the input value is null
        if(firstNameField.text=="" || lastNameField.text == "" || countryField.text == "" || ageField.text == "")
        {
            informationField.textColor = UIColor.red
            informationField.text = "Complete the missing Info!"
        }
        else{
            informationField.textColor = UIColor.green
            informationField.text = "Successfully submitted!"
        }
    }
    @IBAction func clearBtnPressed(_ sender: Any) {
        firstNameField.text?.removeAll()
        lastNameField.text?.removeAll()
        countryField.text?.removeAll()
        ageField.text?.removeAll()
        displayOutput.text?.removeAll()
        informationField.text?.removeAll()
    }
    
    // dismiss the keyboard on pressing outside of text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        ageField.resignFirstResponder()
    }
}

// dismiss the keyboard on pressing enter
extension Lab3ViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
