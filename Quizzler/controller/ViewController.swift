//
//  ViewController.swift
//  Quizzler
//
//  Created by fernando babonoyaba on 11/1/21.
//  i did all the work for this application from zero
//  However this convept application came from a course in udemy
//  ios developer by Angela Yu from app brewery

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionProgress: UIProgressView!
    @IBOutlet weak var score: UILabel!
    var quizBrain = QuizBrain()
  
    
    
    @IBAction func pressed(_ sender: UIButton) {
        if let response = sender.titleLabel?.text {
            if quizBrain.checkAnswer(response) {
                sender.backgroundColor = UIColor.green
            } else {
                sender.backgroundColor = UIColor.red
            }
        }
        
        quizBrain.updateCounter()

        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false, block: { timer in
            sender.backgroundColor = UIColor.clear        })
        
        updateQuestion()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
    
    func updateQuestion(){
        questionLabel.text = quizBrain.getQuestionText()
        questionProgress.progress = quizBrain.getProgress()
        score.text = quizBrain.getScore()
        
    }


}

