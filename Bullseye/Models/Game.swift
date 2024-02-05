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
  var leaderboardEntries: [LeaderboardEntry] = []
  init(loadTestData: Bool = false) {
    if loadTestData {
      addToLeaderBoard(score: 100)
      addToLeaderBoard(score: 80)
      addToLeaderBoard(score: 200)
      addToLeaderBoard(score: 50)
      addToLeaderBoard(score: 20)
    }
  }
  func point(sliderValue: Int) -> Int {
    let bonus: Int
    let difference = abs(target - sliderValue)
    if difference == 0 {
      bonus = 100
    } else if   difference <= 2 {
      bonus = 50
    } else {
      bonus = 0
    }
    return 100 - difference + bonus
  }
  mutating func startNewRound(points: Int) {
    addToLeaderBoard(score: points)
    score += points
    round += 1
    target = Int.random(in: 1...100)
  }
  mutating func restart() {
    round = 1
    score = 0
    target = Int.random(in: 1...100)
  }
  mutating func addToLeaderBoard(score: Int) {
    leaderboardEntries.append(LeaderboardEntry(score: score, date: Date()))
    leaderboardEntries.sort { entry1, entry2 in
      entry1.score > entry2.score
    }
  }
}

struct LeaderboardEntry {
  let score: Int
  let date: Date
}
