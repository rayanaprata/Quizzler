//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var buttonTrue: UIButton!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var buttonFalse: UIButton!

    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        sender.backgroundColor = quizBrain.checkAnswer(userAnswer).color
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        labelQuestion.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        labelScore.text = "Score: \(quizBrain.getScore())"
        buttonTrue.backgroundColor = .clear
        buttonFalse.backgroundColor = .clear
    }
    
}

