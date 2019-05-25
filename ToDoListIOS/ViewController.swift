//
//  ViewController.swift
//  ToDoListIOS
//
//  Created by Gaurab Kumar on 24/05/19.
//  Copyright © 2019 Gaurab Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var groceryTextView: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        groceryTextView.delegate = self
    }
    
    @IBAction func addItem(_ sender: Any) {
        if let text = textField.text, text != "" {
            groceryTextView.text.append("\(text)\n")
            textField.text = ""
            textField.resignFirstResponder()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}
