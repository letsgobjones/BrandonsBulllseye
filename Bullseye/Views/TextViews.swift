//
//  TextViews.swift
//  Bullseye
//
//  Created by Brandon Jones on 2/1/24.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  var body: some View {
    
    
    Text(text.uppercased())
      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
  }
}


struct BigNumberText: View {
  
  var text: String
  var body: some View {
    
    Text(text)
      .kerning(-1.0)
      .fontWeight(.black)
      .font(.largeTitle)
      .foregroundColor(Color("TextColor"))
  }
}


struct SliderLabelText: View {
  var text: String
  var body: some View {
    Text(text)
      .foregroundColor(Color("TextColor"))
      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
  }
}

struct LabelText: View {
  
  var text: String
  var body: some View {
    
    Text(text.uppercased())
      .kerning(1.5)
      .font(.caption)
      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
      .foregroundColor(Color("TextColor"))

  }
}


struct BodyText: View {
  
  var text: String
  var body: some View {
    
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .foregroundColor(Color("TextColor"))
  }
}


struct ButtonText: View {
  
  var text: String
  var body: some View {
    
    Text(text)
      .foregroundColor(.white)
      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
      .font(.headline)
      .padding()
      .frame(maxWidth: .infinity)
      .background(Color.accentColor)
      .foregroundColor(.white)
      .cornerRadius(12.0)
  }
}



#Preview {
  VStack{
    InstructionText(text: "Instructions")
    BigNumberText(text: "999")
    SliderLabelText(text: "50")
    LabelText(text: "Score")
    BodyText(text: "You scored 200 Points\n 🎉🎉🎉 ")
    ButtonText(text: "Start New Round")
  }
  .padding()
}
