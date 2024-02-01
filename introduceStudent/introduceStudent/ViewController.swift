//
//  ViewController.swift
//  introduceStudent
//
//  Created by Luis Manuel Valdez on 1/28/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var changeColorButton: UIButton! //Button that changes background color
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
            numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBAction func changedColorButtonTapped(_ sender: UIButton) {
        view.backgroundColor = generateRandomColor()
    }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!). I am currently in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetsSwitch.isOn) that I want more pets."
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        print(introduction)
    }
    
    //The function below generates a random color
    func generateRandomColor() -> UIColor {
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
