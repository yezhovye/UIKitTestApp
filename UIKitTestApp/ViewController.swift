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
    }
    @IBAction func sliderAction() {
    }
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
    }
    @IBAction func datePickerAction() {
    }
}

