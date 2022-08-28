//
//  nbaTeamGame.swift
//  Guess-A
//
//  Created by Harris Awan on 11/8/2022.
//

import SwiftUI
struct nbaTeamGame: View {
    @State private var showHelpCard = false
    var level: String
    
    @State var guess: String = ""
    var body: some View {
        VStack{
            Text("Guess The Team")
                .fontWeight(.bold)
            Image(answers.teams[randomNum1])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical)
                .frame(width: 150)
            VStack {
               
                Button(answers.teams[randomNum1]) {
                    
                }
                .padding(.vertical)
                
                
                
                Button(answers.teams[randomNum2]) {
                    
                }
                .padding(.vertical)
                
                Button(answers.teams[randomNum3]) {
                    
                }
                .padding(.vertical)
                
                
                
        
        }
          
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
