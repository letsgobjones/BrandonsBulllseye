//
//  PointsView.swift
//  Bullseye
//
//  Created by Brandon Jones on 2/2/24.
//

import SwiftUI

struct PointsView: View {
  @Binding  var alertIsVisable: Bool
  @Binding  var sliderValue: Double
  @Binding  var game: Game
  
  var body: some View {
    let roundedValue = Int(sliderValue.rounded())
    let points = game.point(sliderValue: roundedValue)
    
    VStack (spacing: 10) {
      InstructionText(text: "The Slider's Value is")
      BigNumberText(text: String(roundedValue))
     BodyText(text: "You scored \(points) Points\n 🎉🎉🎉 ")
      Button(action: {
        withAnimation {
        
          alertIsVisable = false
        }
        game.startNewRound(points: points)
      }, label: {
 ButtonText(text: "Start New Round")
      })
      
    }        .padding()
      .frame(maxWidth: 300)
      .background(Color("BackgroundColor"))
      .cornerRadius(21.0)
      .shadow(radius: 10, x: 5, y: 5)
    
  }
}


//#Preview {
//
// 
//  PointsView(alertIsVisable: alertIsVisable, sliderValue: sliderValue, game: game)
//}


struct PointsView_Preview: PreviewProvider {

  
  
  static private var alertIsVisible = Binding.constant(false)
  static private var sliderValue = Binding.constant(50.0)
  static private var game = Binding.constant(Game())

  
  
  static var previews: some View {
    
    PointsView(alertIsVisable: alertIsVisible, sliderValue: sliderValue, game: game)
    
    PointsView(alertIsVisable: alertIsVisible, sliderValue: sliderValue, game: game)
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeRight)
    
    
  }
}
