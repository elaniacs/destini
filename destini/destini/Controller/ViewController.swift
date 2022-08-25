//
//  ViewController.swift
//  destini
//
//  Created by Cáren Sousa on 25/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)

        updateUI()
    }
    
    func updateUI() {
        if storyBrain.storyNumber > storyBrain.store.count - 1 {
            print("The end")
            storyBrain.storyNumber = 0
        }
        
        storyLabel.text = storyBrain.getTitleStory()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

