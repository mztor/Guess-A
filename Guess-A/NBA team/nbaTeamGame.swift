//
//  nbaTeamGame.swift
//  Guess-A
//
//  Created by Harris Awan on 11/8/2022.
//

import SwiftUI
struct nbaTeamGame: View {
    @State private var showHelpCard = false
    @State private var correctA = false
    @State private var incorrectA = false
    var level: String
    
    @State var guess: String = ""
    var body: some View {
        VStack{
            Text("Guess The Team")
                .fontWeight(.bold)
            Image(answers[randomNum1])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical)
                .frame(width: 150)
            VStack {
                Button(answers[randomNum1]) {
                    if randomNum1 == randomNum1{
                        correctA.toggle()
                        currentScore = currentScore + 1

                    }
                }
                .padding(.vertical)
                
                
                
                Button(answers[randomNum2]) {
                    
                }
                .padding(.vertical)
                
                Button(answers[randomNum3]) {
                    
                }
                .padding(.vertical)
                
                
                
        
        }
            .alert(isPresented: $correctA) {Alert(title: Text("Correct"),
                                                   
                dismissButton:
                    .default(Text("Ok")))
                
            }
            .alert(isPresented: $!correctA) {Alert(title: Text("Correct"),
                                                   
                dismissButton:
                    .default(Text("Ok")))
          
          
        }
        .padding()
        .toolbar {
            Button() {
                showHelpCard.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
            }
            .alert(isPresented: $showHelpCard) {Alert(title: Text("Help!"), message: Text("To guess the team name press on a button below the image"),
                
                
                                                      
                                                      
                dismissButton:
                    .default(Text("Ok")))
                
            }
    }
}


struct nbaTeamGame_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamGame(level: "")
    }
}
}
