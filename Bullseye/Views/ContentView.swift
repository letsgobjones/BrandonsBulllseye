//
//  ContentView.swift
//  Bullseye
//
//  Created by Brandon Jones on 1/24/24.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisable = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  var body: some View {
    ZStack {
      BackgroundView(game: $game)
      VStack {
        InstructionView(game: $game)
          .padding(.bottom, alertIsVisable ? 0 : 100)
        if alertIsVisable {
          PointsView(alertIsVisable: $alertIsVisable, sliderValue: $sliderValue, game: $game)
            .transition(.scale)
        } else {
                  HitMeButton(game: $game, alertIsVisable: $alertIsVisable, sliderValue: $sliderValue)
            .transition(.scale)
          }
        }
      if !alertIsVisable {
               SliderView(sliderValue: $sliderValue)
          .zIndex(1.0)
          .transition(.scale)
      }
    }
  }
}

struct InstructionView: View {
  @Binding var game: Game
    var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the bullseye as close as you can to")
        .padding(.horizontal, 30)
       BigNumberText(text: String(game.target))
    }
  }
}

struct SliderView: View {
  @Binding var sliderValue: Double
  var body: some View {
    HStack {
      SliderLabelText(text: "1")
        .frame(width: 35)
      Slider(value: $sliderValue, in: 1.0...100.0)
        .accentColor(.red)
      SliderLabelText(text: "100")
        .frame(width: 35)
    }
    .padding()
  }
}

struct HitMeButton: View {
  @Binding var game: Game
  @Binding var alertIsVisable: Bool
  @Binding var sliderValue: Double
  var body: some View {
    Button("Hit me".uppercased()) {
      withAnimation {
        alertIsVisable = true
      }
    }
    .padding(20.0)
    .background(
      ZStack {
        Color("ButtonColor")
        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]),
                       startPoint: .top, endPoint: .bottom)
      }
    )
    .overlay(
      RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
        .strokeBorder(Color.white, lineWidth: Constants.General.strokeWidth)
    )
    .foregroundColor(.white)
    .cornerRadius(Constants.General.roundRectCornerRadius)
    .fontWeight(.bold)
    .font(.title3)
  }
}

struct ContentViewPreview: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeRight)
  }
}
