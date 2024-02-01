//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Brandon Jones on 2/1/24.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  
  var systemName: String
  var body: some View {
    
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56, height: 56)
      .overlay(
      
      Circle()
        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      
      )
    
    
  }
}





struct RoundedImageViewFilled: View {
  
  var systemName: String
  var body: some View {
    
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: 56, height: 56)
      .background(
        Circle()
          .fill(Color("ButtonFIlledBackgroundColor"))
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
      .frame(width: 68, height: 56)
      .foregroundColor(Color("TextColor"))
      .overlay(
        RoundedRectangle(cornerRadius: 21.0)
        .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2.0)
      )
  }
}




struct PreviewView: View {
  
  var body: some View {
    
    
    VStack(spacing: 10) {
      
      RoundedImageViewFilled(systemName: "arrow.counterclockwise")
      
      RoundedImageViewStroked(systemName: "list.dash")
      RoundRectTextView(text: "99")
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
