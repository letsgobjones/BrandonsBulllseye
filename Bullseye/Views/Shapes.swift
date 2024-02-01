//
//  Shapes.swift
//  Bullseye
//
//  Created by Brandon Jones on 2/1/24.
//

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack{
      Circle()
//        .fill(Color.blue)
        .strokeBorder(Color.blue, lineWidth: 20)
        .frame(width: 200, height: 100)
        .background(Color.green)
      
      
      
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.blue)
        .frame(width: 200, height: 100)
      Capsule()
        .fill(Color.blue)
        .frame(width: 200, height: 100)
      Ellipse()
        .fill(Color.blue)
        .frame(width: 200, height: 100)
    }
  }
}

#Preview {
  Shapes()
}
