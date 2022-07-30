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
    //using a UITextView instead of a UILabel for editable text
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainField.delegate = self
        // Do any additional setup after loading the view.
    }

    
    //change text color upon click
    @IBAction func ChangeTextColorClicked(_ sender: Any) {
        print("Hello")
        textView.textColor = UIColor.purple
        
    }
    
    //change background color upon click
    @IBAction func changeBackground(_ sender: Any) {
        changeBackground = !changeBackground
        if changeBackground{
            view.backgroundColor = .red
        }
        
    }
    
    //reset to default settings upon clicking the background
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.backgroundColor = .blue
        textView.text = "Hello World"
    }
    
    //display mainField text onto the textView
    @IBAction func EnterTextButton(_ sender: Any) {
        textView.text = "\(mainField.text!)"
        mainField.resignFirstResponder()
    }
    
    
}

