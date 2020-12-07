//
//  ViewController.swift
//  TextGame
//
//  Created by Валерий Клименко on 07.12.2020.
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
    
    
    if let userChoiceTitle = sender.currentTitle {
      if userChoiceTitle == storyBrain.getChoiceTitle(numChoice: 1) {
        storyBrain.nextStory(1)
      } else {
        storyBrain.nextStory(2)
      }
    }
    
    updateUI()
  }
  
  func updateUI() {
    storyLabel.text = storyBrain.getStoryTitle()
    choice1Button.setTitle(storyBrain.getChoiceTitle(numChoice: 1), for: .normal)
    choice2Button.setTitle(storyBrain.getChoiceTitle(numChoice: 2), for: .normal)
  }
}

