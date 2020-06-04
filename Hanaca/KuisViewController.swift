//
//  KuisViewController.swift
//  Hanaca
//
//  Created by DDD on 01/06/20.
//  Copyright © 2020 Dandun Adi. All rights reserved.
//

import UIKit

class KuisViewController: UIViewController {

    var quizBrain = QuizBrain()
    
    @IBOutlet var questionText: UILabel!
    @IBOutlet var firstAnswerButton: UIButton!
    @IBOutlet var secondAnswerButton: UIButton!
    @IBOutlet var thirdAnswerButton: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        quizBrain.checkAnswer(userAnswer)
        quizBrain.nextQuestion()
        updateUI()
    }
    
    func updateUI(){
        print(quizBrain.isOver)
        if quizBrain.isOver == true {
            gameOver()
        } else {
            print("ui")
            questionText.text = quizBrain.showQuestionText()
            firstAnswerButton.setTitle(quizBrain.showAnswerText(0), for: .normal)
            secondAnswerButton.setTitle(quizBrain.showAnswerText(1), for: .normal)
            thirdAnswerButton.setTitle(quizBrain.showAnswerText(2), for: .normal)
            progressBar.progress = quizBrain.getProgressBar()
            // scoreLabel.text = "Score : \(quizBrain.score)"
        }
    }
    
    func gameOver() {
        let ac = UIAlertController(title: "Nilai kamu: \(quizBrain.score)/10", message: "", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Ulangi", style: .default, handler: { (UIAlertAction) in
            self.quizBrain.isOver = false
            self.quizBrain.score = 0
            self.updateUI()
        }))
        ac.addAction(UIAlertAction(title: "Halaman utama", style: .cancel, handler: { (UIAlertAction) in
            self.performSegue(withIdentifier: "goToHome", sender: self)
        }))
        present(ac, animated: true)

    }


}
