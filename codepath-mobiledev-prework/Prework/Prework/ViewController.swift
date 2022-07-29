//
//  ViewController.swift
//  Prework
//
//  Created by Vatsal Ananthula on 7/28/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var changeBackground = true
    
    @IBOutlet weak var mainField: UITextField!
    //using a UITextView instead of UILabel for editable text
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainField.delegate = self
        // Do any additional setup after loading the view.
    }

    
    @IBAction func ChangeTextColorClicked(_ sender: Any) {
        print("Hello")
        textView.textColor = UIColor.purple
        
    }
    
    //change background upon every click
    @IBAction func changeBackground(_ sender: Any) {
        changeBackground = !changeBackground
        if changeBackground {
            view.backgroundColor = .blue
        }
        else {
            view.backgroundColor = .red
        }
    }
    
    @IBAction func EnterTextButton(_ sender: Any) {
        textView.text = "\(mainField.text!)"
        mainField.resignFirstResponder()
    }
    
    
}

