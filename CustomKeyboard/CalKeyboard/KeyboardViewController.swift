//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var firstKeyboardButton: UIButton!
    @IBOutlet var secondKeyboardButton: UIButton!
    @IBOutlet var thirdKeyboardButton: UIButton!
    @IBOutlet var fourthKeyboardButton: UIButton!
    @IBOutlet var fifthKeyboardButton: UIButton!
    @IBOutlet var sixthKeyboardButton: UIButton!
    @IBOutlet var seventhKeyboardButton: UIButton!
    @IBOutlet var eighthKeyboardButton: UIButton!
    @IBOutlet var ninthKeyboardButton: UIButton!
    @IBOutlet var tenKeyboardButton: UIButton!
    @IBOutlet var elevenKeyboardButton: UIButton!
    @IBOutlet var tweleveKeyboardButton: UIButton!
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        deleteKeyboardButton.addTarget(self, action: "deleteAction", forControlEvents: .TouchUpInside)
        returnKeyboardButton.addTarget(self, action: "returnAction", forControlEvents: .TouchUpInside)
        firstKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        secondKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        thirdKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        fourthKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        fifthKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        sixthKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        seventhKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        eighthKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        ninthKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        tenKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        elevenKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        tweleveKeyboardButton.addTarget(self, action: "inputAction", forControlEvents: .TouchUpInside)
        
    }
    
    func inputAction(sender: AnyObject) {
        let button = sender as! UIButton
        var input = ""
        let proxy = self.textDocumentProxy as UIKeyInput
        switch(button.tag) {
        case 1:
            input = "♔"
        case 2:
            input = "☾"
        case 3:
            input = "☎"
        case 4:
            input = "❀"
        case 5:
            input = "☯"
        case 6:
            input = "ღ"
        case 7:
            input = "★"
        case 8:
            input = "♖"
        case 9:
            input = "☃"
        case 10:
            input = "☁"
        case 11:
            input = "⌘"
        case 12:
            input = "❦"
        default:
            input = ""
            
        }
        proxy.insertText(input)
    }
    
    func deleteAction(sender: AnyObject) {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.deleteBackward()
    }
    
    func returnAction(sender: AnyObject) {
        let proxy = self.textDocumentProxy as UIKeyInput
        proxy.insertText("\n")
    }


}
