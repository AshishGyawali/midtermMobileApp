//
//  Lab2ViewController.swift
//  Ashish_Gyawali_MT_8971080
//
//  Created by Ashish Gyawali on 2024-03-13.
//

import UIKit

public class DataStore{
    private static var curValue = 0
    public static var isStep = false
    
    public static func getCurrentValue() -> Int{
        return curValue
    }
    
    public static func setCurrentValue(value: Int){
        curValue = value
    }
    
    public static func getStepValue() -> Bool{
        return isStep
    }
    
    public static func setStepValue(value: Bool){
        isStep = value
    }
    
}

class Lab2ViewController: UIViewController {

    @IBOutlet weak var stepButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var displayOutput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        displayOutput.text = String(DataStore.getCurrentValue())
    }
    

    @IBAction func onPressStepButton(_ sender: Any) {
        DataStore.isStep = true
    }
    @IBAction func onPressResetButton(_ sender: Any) {
        DataStore.setCurrentValue(value: 0)
        displayOutput.text = String(DataStore.getCurrentValue())
        DataStore.isStep = false
    }
    @IBAction func onPressPlusButton(_ sender: Any) {
        if(DataStore.isStep){
            DataStore.setCurrentValue(value: DataStore.getCurrentValue()+2)
        }
        else{
            DataStore.setCurrentValue(value: DataStore.getCurrentValue()+1)
        }
        displayOutput.text = String(DataStore.getCurrentValue())
    }
    @IBAction func onPressMinusButton(_ sender: Any) {
        if(DataStore.isStep){
            DataStore.setCurrentValue(value: DataStore.getCurrentValue()-2)
        }
        else{
            DataStore.setCurrentValue(value: DataStore.getCurrentValue()-1)
        }
        displayOutput.text = String(DataStore.getCurrentValue())
    }
    
}
