//
//  nbaTeamGame.swift
//  Guess-A
//
//  Created by Harris Awan on 11/8/2022.
//

import SwiftUI

var randomNum = 1

struct nbaTeamGame: View {
    var level: String
    
    @State var guess: String = ""
    var body: some View {
        Text("Guess The Team")
            .fontWeight(.bold)
        Image(answers.teams[randomNum])
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.vertical)
            .frame(width: 150)
        
            
            
            
            
            
        }
}


struct nbaTeamGame_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamGame(level: "")
    }
}
