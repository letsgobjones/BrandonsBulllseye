//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Brandon Jones on 2/1/24.
//

import SwiftUI


struct RoundedImageViewFilled: View {
  
  var systemName: String
  var body: some View {
    
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .background(
        Circle()
          .fill(Color("ButtonFIlledBackgroundColor"))
      )
    
    
  }
}

struct RoundedImageViewStroked: View {
  
  var systemName: String
  var body: some View {
    
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
      
      Circle()
        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
      
      )
    
    
  }
}




struct RoundRectTextView: View {
  var text: String
  var body: some View {
    
Text(text)
      .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
      .kerning(-0.2)
      .font(.title3)
      .frame(width: Constants.General.roundRectViewWidth, height: Constants.General.roundRectViewHeight)
      .foregroundColor(Color("TextColor"))
      .overlay(
        RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
      )
  }
}




struct RoundedTextView: View {
  var text: String
  var body: some View {
    
Text(text)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
      .overlay(
      
      Circle()
        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)

      )
      
  }
}



struct PreviewView: View {
  
  var body: some View {
    
    
    VStack(spacing: 10) {
      
      RoundedImageViewFilled(systemName: "arrow.counterclockwise")
      
      RoundedImageViewStroked(systemName: "list.dash")
      RoundRectTextView(text: "99")
      RoundedTextView(text: "1")
    }
    
    
    
  }
  
}




#Preview {
  PreviewView()
  
}


#Preview {
  PreviewView()
    .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
  
}
