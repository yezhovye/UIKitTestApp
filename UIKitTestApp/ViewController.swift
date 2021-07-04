//
//  ViewController.swift
//  UIKitTestApp
//
//  Created by Victoria Klimova on 04.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messageLabel.font = messageLabel.font.withSize(35)
        messageLabel.textAlignment = .center
        messageLabel.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        messageLabel.text = String(slider.value)
        
        datePicker.locale = Locale(identifier: "ru_RU")
    }

    @IBAction func segmentedControlAction() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            messageLabel.text = "The first segment is selected"
            messageLabel.textColor = .red
        case 1:
            messageLabel.text = "The second segment is selected"
            messageLabel.textColor = .blue
        case 2:
            messageLabel.text = "The third segment is selected"
            messageLabel.textColor = .yellow
        default: break
        }
    }
    @IBAction func sliderAction() {
        messageLabel.text = String(slider.value)
        let sliderValue = CGFloat(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
    }
    @IBAction func datePickerAction() {
    }
}

