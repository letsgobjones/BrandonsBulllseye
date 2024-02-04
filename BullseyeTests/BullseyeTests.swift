//
//  BullseyeTests.swift
//  BullseyeTests
//
//  Created by Brandon Jones on 1/24/24.
//

import XCTest
@testable import Bullseye

final class BullseyeTests: XCTestCase {
  var game: Game!
  override func setUpWithError() throws {
    // Put setup code here.
    game = Game ()
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here.
    game = nil
  }
  
  func testScorePositive() {
    var guess = game.target + 5
    var score = game.point(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
  func testScoreNegative() {
    var guess = game.target - 5
    var score = game.point(sliderValue: guess)
    XCTAssertEqual(score, 95)
  }
  
  
  
  func testScoreExact() {
    var guess = game.target
    var score = game.point(sliderValue: guess)
    XCTAssertEqual(score, 200)
  }
  
  func testScoreClose() {
    var guess = game.target + 2
    var score = game.point(sliderValue: guess)
    XCTAssertEqual(score, 98 + 50)
  }
  
  
  func testNewRound() {
    game.startNewRound(points: 100)
    XCTAssertEqual(game.score, 100)
    XCTAssertEqual(game.round, 2)
  }
  
  
  func testRestart() {
    game.startNewRound(points: 100)
    XCTAssertNotEqual(game.score, 0)
    XCTAssertNotEqual(game.round, 1)
    game.restart()
    XCTAssertEqual(game.score, 0)
    XCTAssertEqual(game.round, 1)
    
    
    
  }
  
  
  func testLeaderboard() {
    
    game.startNewRound(points: 100)
    XCTAssertEqual(game.leaderboardEntries.count, 1)
    XCTAssertEqual(game.leaderboardEntries[0].score, 100)
    
    game.startNewRound(points:200)
    XCTAssertEqual(game.leaderboardEntries.count, 2)
    XCTAssertEqual(game.leaderboardEntries[0].score, 200)
    XCTAssertEqual(game.leaderboardEntries[1].score, 100)

    
    
    
  }
  
}
