//
//  StoryBrain.swift
//  destini
//
//  Created by Cáren Sousa on 25/08/22.
//

import Foundation

struct StoryBrain {
    
    var store = [
        Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right"),
        Story(title: "You see a tiger", choice1: "Shout for help", choice2: "Play dead"),
        Story(title: "You find a treasure chest", choice1: "Open it", choice2: "Check for traps")
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        if userChoice == store[storyNumber].choice1 {
            storyNumber = storyNumber + 1
        }
        else {
            storyNumber = storyNumber + 2
        }
    }
    
    func getTitleStory() -> String {
       return store[storyNumber].title
    }
    
    func getChoice1() -> String {
        return store[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return store[storyNumber].choice2
    }
    
}
