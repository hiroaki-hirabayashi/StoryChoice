//
//  ViewController.swift
//  StoryChoice
//
//  Created by Hiroaki-Hirabayashi on 2022/01/01.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var storyLabel: UILabel!
    @IBOutlet private weak var choiceButton1: UIButton!
    @IBOutlet private weak var choiceButton2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction private func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    private func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choiceButton1.setTitle(storyBrain.getChoice1(), for: .normal)
        choiceButton2.setTitle(storyBrain.getChoice2(), for: .normal)
    }

}

