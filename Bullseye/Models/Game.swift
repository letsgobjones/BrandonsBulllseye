//
//  Game.swift
//  Bullseye
//
//  Created by Brandon Jones on 1/24/24.
//

import Foundation


struct Game {
  
  var target: Int = Int.random(in: 1...100)
  var score = 0
  var round = 1
  
  func point(sliderValue: Int) -> Int {
    
    let bonus: Int
    let difference = abs(target - sliderValue)

    
    if difference == 0 {
      
      bonus = 100
    } else if   difference <= 2 {
      bonus = 50
    
    }
    else {
      bonus = 0
      
    }
    return 100 - difference + bonus

    
  }
  
  
  mutating func startNewRound(points: Int) {
    
    
    score += points
    round += 1
  target = Int.random(in: 1...100)
    
  }

  
  
  mutating func restart() {
    
    round = 1
    score = 0
    target = Int.random(in: 1...100)

  }
  
}
