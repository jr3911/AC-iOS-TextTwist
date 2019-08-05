//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var sample = TextTwistModel()
    var threeLetterAnswers = ""
    var fourLetterAnswers = ""
    var fiveLetterAnswers = ""
    var sixLetterAnswers = ""
    
    @IBOutlet weak var letterBank: UILabel!
    @IBOutlet weak var validationMessage: UILabel!
    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var threeLetters: UITextView!
    @IBOutlet weak var fourLetters: UITextView!
    @IBOutlet weak var fiveLetters: UITextView!
    @IBOutlet weak var sixLetters: UITextView!
    
    
    @IBAction func guessInput(_ sender: UITextField) {
        if sample.checkGuess(sender.text!) {
            validationMessage.text = "Correct!"
            sortGuessIntoWordBank(sender.text!)
        } else {
            validationMessage.text = "Wrong! Try Again"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userGuess.delegate = self
        validationMessage.text = ""
        showRandomLetters()
    }
    
    func sortGuessIntoWordBank(_ guess: String) {
        switch guess.count {
        case 3:
            threeLetterAnswers += "\(guess)\n"
            threeLetters.text = threeLetterAnswers
        case 4:
            fourLetterAnswers += "\(guess)\n"
            fourLetters.text = fourLetterAnswers
        case 5:
            fiveLetterAnswers += "\(guess)\n"
            fiveLetters.text = fiveLetterAnswers
        case 6:
            sixLetterAnswers += "\(guess)\n"
            sixLetters.text = sixLetterAnswers
        default:
            print("Never gonna give you up")
        }
    }
    
    func showRandomLetters() {
        letterBank.text = sample.testCase.letters
    }
    
    
    
    
    
    
    
    
}

