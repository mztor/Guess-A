//
//  playingCardFinish.swift
//  Guess-A
//
//  Created by Joel Braatz on 28/8/2022.
//

import SwiftUI

struct playingCardFinish: View {
    
    @State private var showHelpCard = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("Good Game!")
                .font(.largeTitle)
                .fontWeight(.black)
                .padding(0.2)
            Spacer()
            Text("Score: " + String(pCardPointCounter))
                .font(.title2)
                .fontWeight(.semibold)
                .padding(0.2)
            Spacer()
            if pCardPointCounter == maxScore/3 {
                Image("bronzeMedal")
                    .padding()
                Text("Bronze Medal Earned!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(0.2)
            } else if pCardPointCounter == maxScore*2/3 {
                Image("silverMedal")
                    .padding()
                Text("Silver Medal Earned!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(0.2)
            } else if pCardPointCounter == maxScore {
                Image("goldMedal")
                    .padding()
                Text("Gold Medal Earned!")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(0.2)
            }
            Spacer()
            
            NavigationLink(destination: ContentView()) {
                Text("FINISH")
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .background(RoundedRectangle(cornerRadius: 18).fill(Color.black).frame(width: 165, height: 65))
                    .padding()
                
            }
            Spacer()
        }
        .navigationBarHidden(true)
        .toolbar {
            
            Button() {
                
                showHelpCard.toggle()
                
            } label: {
                
                Image(systemName: "questionmark.circle")
                
            }
            .alert(isPresented: $showHelpCard) {
                
                Alert(title: Text("Help!"), message: Text("Game is Over! Press 'FINISH' to return to main menu."), dismissButton: .default(Text("Ok")))
            }
        }
    }
}

struct playingCardFinish_Previews: PreviewProvider {
    static var previews: some View {
        playingCardFinish()
    }
}
