//
//  RowView.swift
//  Bullseye
//
//  Created by Brandon Jones on 2/3/24.
//

import SwiftUI





struct LeaderboardView: View {
  
    var body: some View {
      ZStack {
        Color("BackgroundColor")
          .ignoresSafeArea()
        VStack(spacing: 10) {
        HeaderView()
          LabelView()
        RowView(index: 1, score: 10, date: Date())
        }
      }
  }
  
}


struct HeaderView: View {
  
  var body: some View {
    ZStack {
      BigBoldText(text: "Leaderboard")
      
      HStack {
        Spacer()
        
        Button(action: {
          //action
        }
               , label: {
          RoundedImageViewFilled(systemName: "xmark")
        })
        
        
        
      }
      
      
    }
    
  }
  
}




struct LabelView: View {
  var body: some View {
    HStack {
      Spacer()
        .frame(width: Constants.General.roundedViewLength)
      Spacer()
      LabelText(text: "Score")
        .frame(width: Constants.Leaderboard.scoreColumnWidth)
      Spacer()
      LabelText(text: "Date")
        .frame(width: Constants.Leaderboard.dateColumnWidth)
    }
    .padding(.horizontal)
    .frame(maxWidth: Constants.Leaderboard.maxRowWidth)
  }
}





struct RowView: View {
  
  
  let index: Int  //rank
  let score: Int
  let date: Date
  
  
  
  var body: some View {
  
      HStack {
        
        RoundedTextView(text: String(index))
        Spacer()
        ScoreText(score: score)
          .frame(width: Constants.Leaderboard.scoreColumnWidth)
        Spacer()
        DateText(date: date)
          .frame(width: Constants.Leaderboard.dateColumnWidth)
        
        
      }
      .background(
        RoundedRectangle(cornerRadius: .infinity)
          .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
      )
      .padding(.horizontal)
      .frame(maxWidth: Constants.Leaderboard.maxRowWidth)
    }
}

#Preview {
  LeaderboardView()
}
