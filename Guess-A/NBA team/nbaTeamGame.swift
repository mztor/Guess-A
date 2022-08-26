//
//  nbaTeamGame.swift
//  Guess-A
//
//  Created by Harris Awan on 11/8/2022.
//

import SwiftUI

var randomNum1 = 1
var randomNum2 = 2
var randomNum3 = 3

struct nbaTeamGame: View {
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
            Button(){
                showHelp()
            } label: {
                Image(systemName: "questionmark.circle")
            }
    }
}


struct nbaTeamGame_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamGame(level: "")
    }
}
}
