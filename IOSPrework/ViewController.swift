//
//  ViewController.swift
//  IOSPrework
//
//  Created by Kelly Dong on 1/26/20.
//  Copyright © 2020 Kelly Dong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.orange
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if textField.text == "" {
            textLabel.text = "Goodbye 👋"
        }
        else {
            textLabel.text = textField.text
        }
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello From Kelly"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
    }
}

