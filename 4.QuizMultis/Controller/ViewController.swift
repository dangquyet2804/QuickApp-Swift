//
//  ViewController.swift
//  4.QuizMultis
//
//  Created by Dang Xuan Quyet on 12/2/19.
//  Copyright © 2019 Mac pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerA: UIButton!
    @IBOutlet weak var answerB: UIButton!
    @IBOutlet weak var answerC: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func answerPress(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let rightAnswer = quizBrain.checkAnswer(userAnswer: userAnswer)
        if rightAnswer {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.netxQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestion()
        answerA.setTitle(quizBrain.getAnswerA(), for: .normal)
        answerB.setTitle(quizBrain.getAnswerB(), for: .normal)
        answerC.setTitle(quizBrain.getAnswerC(), for: .normal)
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        progressBar.progress = quizBrain.getProgress()
        
        answerA.backgroundColor = UIColor.clear
        answerB.backgroundColor = UIColor.clear
        answerC.backgroundColor = UIColor.clear
    }
    
}

