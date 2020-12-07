//
//  StoryBrain.swift
//  TextGame
//
//  Created by Валерий Клименко on 07.12.2020.
//

import Foundation

struct StoryBrain {
  var stories = [
0 : Story(title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide-brimmed hat and soulless eyes opens the passenger door for you and says: \"Need a ride, boy?\".",
    choice1: Choice(title: "I'll hop in. Thanks for the help!", link: 2),
    choice2: Choice(title: "Well, I don't have many options. Better ask him if he's a murderer.", link: 1) ),
    
1 : Story(title: "He nods slowly, unphased by the question.",
    choice1: Choice(title: "At least he's honest. I'll climb in.", link: 2),
    choice2: Choice(title: "Wait, I know how to change a tire.", link: 3)),
    
2 : Story(title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
    choice1: Choice(title: "I love Elton John! Hand him the cassette tape.", link: 5),
    choice2: Choice(title: "It’s him or me. Take the knife and stab him.", link: 4)),
    
3 : Story(title: "What? Such a cop-out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?",
    choice1: Choice(title: "The", link: 0),
    choice2: Choice(title: "End", link: 0)),
    
4 : Story(title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
    choice1: Choice(title: "The", link: 0),
    choice2: Choice(title: "End", link: 0)),
    
5 : Story(title: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"",
    choice1: Choice(title: "The", link: 0),
    choice2: Choice(title: "End", link: 0))]
  
  var currentStory: Int = 0
  
  func getStoryTitle() -> String {
    return stories[currentStory]!.title
  }
  
  func getChoiceTitle(numChoice: Int) -> String? {
    switch numChoice {
    case 1:
      return stories[currentStory]!.choice1.title
    case 2:
      return stories[currentStory]!.choice2.title
    default:
      return nil
    }
  }
  
  mutating func nextStory(_ numChoice: Int) {
    switch numChoice {
    case 1:
      currentStory = stories[currentStory]!.choice1.link
    case 2:
      currentStory = stories[currentStory]!.choice2.link
    default:
      currentStory = 0
    }
    print(currentStory)
  }
}
