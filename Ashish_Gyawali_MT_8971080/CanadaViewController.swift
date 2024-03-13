//
//  CanadaViewController.swift
//  Ashish_Gyawali_MT_8971080
//
//  Created by Ashish Gyawali on 2024-03-12.
//

import UIKit

class CanadaViewController: UIViewController {

    @IBOutlet weak var displayMessage: UILabel!
    @IBOutlet weak var cityName: UITextField!
    @IBOutlet weak var cityImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cityName.delegate = self
    }
    
    
    @IBAction func findCity(_ sender: Any) {
        if(cityName.text == "")
        {
            cityImage.image = UIImage(named:"Canada.jpeg")
            displayMessage.text = "Please enter any canadian city name"
        }
        else if(cityName.text == "Toronto")
        {
            cityImage.image = UIImage(named:"Toronto.jpeg")
            displayMessage.text = ""
        }
        else if(cityName.text == "Vancouver")
        {
            cityImage.image = UIImage(named:"Vancouver.jpeg")
            displayMessage.text = ""
        }
        else if(cityName.text == "Calgary")
        {
            cityImage.image = UIImage(named:"Calgary.jpeg")
            displayMessage.text = ""
        }
        else if(cityName.text == "Halifax")
        {
            cityImage.image = UIImage(named:"Halifax.jpeg")
            displayMessage.text = ""
        }
        else if(cityName.text == "Montreal")
        {
            cityImage.image = UIImage(named:"Montreal.jpeg")
            displayMessage.text = ""
        }
        else if(cityName.text == "Winnipeg")
        {
            cityImage.image = UIImage(named:"Winnipeg.jpeg")
            displayMessage.text = ""
        }
        else
        {
            cityImage.image = UIImage(named:"Canada.jpeg")
            displayMessage.text = "Couldn't find the image"
        }
    }
    
    // dismiss the keyboard on pressing outside of text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        cityName.resignFirstResponder()
    }

}

// dismiss the keyboard on pressing enter
extension CanadaViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
