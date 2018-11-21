//
//  ViewController.swift
//  Homework4
//
//  Created by Мостовий Ігор on 14.11.18.
//  Copyright © 2018 Мостовий Ігор. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var labelchangedByButton: UILabel!
    var n = 1
    @IBOutlet weak var labelChangedByFirstSecond: UILabel!
    @IBOutlet weak var firstSecond: UISegmentedControl!
    @IBOutlet weak var labelChangedByTextField: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelChangedBySlider: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var switchbtn: UISwitch!
    @IBOutlet weak var generalView: UIView!
    @IBOutlet weak var activityspinner: UIActivityIndicatorView!
    @IBOutlet weak var labelChangedByStepper: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var viewToHoldTheImage: UIView!
    
    
    @IBAction func buttonToChangeTheLabel(_ sender: UIButton) {
        labelchangedByButton.text = "\(n)th change"
        n += 1
    }
    @IBAction func changingFirstSecond(_ sender: UISegmentedControl) {
        if(firstSecond.selectedSegmentIndex == 0) {
            labelChangedByFirstSecond.text = "First"
        } else {
            labelChangedByFirstSecond.text = "Second"
        }
    }
    
    @IBAction func changingTextField(_ sender: UITextField) {
        labelChangedByTextField.text = textField.text
    }
    
    @IBAction func changedSlider(_ sender: UISlider) {
        labelChangedBySlider.text = String(slider.value)
    }
    
    @IBAction func changingSwitch(_ sender: UISwitch) {
        if(switchbtn.isOn) {
            generalView.backgroundColor = .white
        } else {
            generalView.backgroundColor = .black
        }
    }
    
    @IBAction func buttonForSpinner(_ sender: UIButton) {
        if(activityspinner.isAnimating) {
            activityspinner.stopAnimating()
        } else {
            activityspinner.startAnimating()
        }
    }
    
    @IBAction func changeStepper(_ sender: UIStepper) {
        labelChangedByStepper.text = String(stepper.value)
    }
    
    @IBAction func insertImage(_ sender: UIButton) {
        viewToHoldTheImage.backgroundColor = UIColor(patternImage: UIImage(named: "1st_task")!)
    }
}

