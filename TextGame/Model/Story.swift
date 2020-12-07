//
//  Story.swift
//  TextGame
//
//  Created by Валерий Клименко on 07.12.2020.
//

import Foundation

struct Story {
  var title: String
  var choice1: Choice
  var choice2: Choice
  
  init(title: String, choice1: Choice, choice2: Choice) {
    self.title = title
    self.choice1 = choice1
    self.choice2 = choice2
  }
}

struct Choice {
  var title: String
  var link: Int
  
  init(title: String, link: Int) {
    self.title = title
    self.link = link
  }
}
