//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [Question(text: "9 + 9 = 2" , answer: "False"),
                Question(text: "8 + 2 = 10" , answer: "True"),
                Question(text: "Dolphins are sea mammals", answer: "True")]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
      updateUI()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer{
            print("Correct!")
        }else{
            print("Wrong!")
        }
        if questionNumber+1<quiz.count{
            questionNumber+=1
        }
        else{
            questionNumber = 0
        }
        updateUI()
        
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
    }
}

