//
//  ViewController.swift
//  introduceStudent
//
//  Created by Francisco Lira on 1/28/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton){
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction (action)
        
        present(alertController, animated: true, completion: nil)
        
        print(introduction)
//        let defaults = UserDefaults.standard
//               defaults.set(firstNameTextField.text, forKey: "firstNameTextField")
//               defaults.set(lastNameTextField.text, forKey: "lastNameTextField")
//               defaults.set(schoolNameTextField.text, forKey: "schoolNameTextField")
//               defaults.set(year, forKey: "Year")
//               defaults.set(numberOfPetsLabel.text, forKey: "numberOfPetsLabel")
//               defaults.set(morePetsSwitch.isOn, forKey: "MorePetsSwitch")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let defaults = UserDefaults.standard
//        firstNameTextField.text = "Hello"
//        firstNameTextField.text = defaults.string(forKey: "FirstName")
//        lastNameTextField.text = defaults.string(forKey: "LastName")
//        schoolNameTextField.text = defaults.string(forKey: "SchoolName")
//        yearSegmentedControl.selectedSegmentIndex = defaults.integer(forKey: "Year")
//        if(defaults.string(forKey: "numberOfPetsLabel")==nil) {
//            defaults.set("0", forKey: "numberOfPetsLabel")
//            morePetsStepper.value = 0
//        }
//        numberOfPetsLabel.text = defaults.string(forKey: "numberOfPetsLabel")
//        morePetsStepper.value = Double(0 + Int(numberOfPetsLabel.text!)!)
//        morePetsSwitch.isOn = defaults.bool(forKey: "morePetsSwitch")
        
        
    }
    
}
