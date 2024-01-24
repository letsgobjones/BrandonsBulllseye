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
  
}
