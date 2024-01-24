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
    
    VStack {
      Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE \nAS YOU CAN TO")
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .kerning(2.0)
      
      Text(String(game.target))
        .kerning(-1.0)
        .fontWeight(.black)
        .font(.largeTitle)
      
    }
    HStack {
      Text("1")
        .font(.body)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .padding()
      Slider(value: $sliderValue, in: 1.0...100.0)
        .accentColor(.red)
      Text("100")
        .font(.body)
        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        .padding()
    }
    .padding()
    
    Button("Hit me") {
      alertIsVisable = true
    }
    .alert(
      "Hello there!",
           isPresented: $alertIsVisable,
           actions: {
             Button("Awesome") { print("Alert closed")
             }
                    },
      message: {
        let roundedValue = Int(sliderValue.rounded())
        Text("""
The slider's value is \(roundedValue)
You scored \(game.point(sliderValue: roundedValue)) points this round.

""")
      }
      )
  }
}

#Preview {
  ContentView()
}
