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
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    @IBOutlet var fourButton: UIButton!
    @IBOutlet var fiveButton: UIButton!
    @IBOutlet var sixButton: UIButton!
    @IBOutlet var sevenButton: UIButton!
    @IBOutlet var eightButton: UIButton!
    
    
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
        oneButton.addTarget(self, action: "inputOne", forControlEvents: .TouchUpInside)
        twoButton.addTarget(self, action: "inputTwo", forControlEvents: .TouchUpInside)
        threeButton.addTarget(self, action: "inputThree", forControlEvents: .TouchUpInside)
        fourButton.addTarget(self, action: "inputFour", forControlEvents: .TouchUpInside)
        fiveButton.addTarget(self, action: "inputFive", forControlEvents: .TouchUpInside)
        sixButton.addTarget(self, action: "inputSix", forControlEvents: .TouchUpInside)
        sevenButton.addTarget(self, action: "inputSeven", forControlEvents: .TouchUpInside)
        eightButton.addTarget(self, action: "inputEight", forControlEvents: .TouchUpInside)
        
    }
    
    func inputOne() {
        self.textDocumentProxy.insertText("1")
    }
    
    func inputTwo() {
        self.textDocumentProxy.insertText("2")
    }
    
    func inputThree() {
        self.textDocumentProxy.insertText("3")
    }
    
    func inputFour() {
        self.textDocumentProxy.insertText("4")
    }
    
    func inputFive() {
        self.textDocumentProxy.insertText("5")
    }

    func inputSix() {
        self.textDocumentProxy.insertText("6")
    }

    func inputSeven() {
        self.textDocumentProxy.insertText("7")
    }

    func inputEight() {
        self.textDocumentProxy.insertText("8")
    }
    
    func deleteAction() {
        self.textDocumentProxy.deleteBackward()
    }
    
    func returnAction() {
        self.textDocumentProxy.insertText("\n")
    }


}
