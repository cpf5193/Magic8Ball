//
//  MainVC.swift
//  answerball
//
//  Created by  Christon Fukuhara on 1/24/17.
//  Copyright © 2017  Christon Fukuhara. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    // Attach visual components to the viewcontroller
    
    @IBOutlet weak var answerText: UILabel!
    
    var answers = ["It is certain",
                   "It is decidedly so",
                   "Without a doubt",
                   "Yes definitely",
                   "You may rely on it",
                   "As I see it yes",
                   "Most likely",
                   "Outlook good",
                   "Yes",
                   "Signs point to yes",
                   "Reply hazy try again",
                   "Ask again later",
                   "Better not tell you now",
                   "Cannot predict now",
                   "Concentrate and ask again",
                   "Don't count on it",
                   "My reply is no",
                   "My sources say no",
                   "Outlook not so good",
                   "Very doubtful"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        if let unwrappedEvent = event {
            getAnswerTapped(unwrappedEvent)
        }
    }
    
    @IBAction func getAnswerTapped(_ sender: UIEvent) {
        answerText.text = getAnswer()
        answerText.isHidden = false
    }
    
    func getAnswer() -> String {
        let random = Int(arc4random_uniform(UInt32(answers.count)))
        return answers[random]
    }

}
