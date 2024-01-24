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
    100 - abs(target - sliderValue)
  }
  
  
}
