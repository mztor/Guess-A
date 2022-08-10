//
//  nbaTeamGame.swift
//  Guess-A
//
//  Created by Harris Awan on 11/8/2022.
//

import SwiftUI

struct nbaTeamGame: View {
    var level: String
    
    @State var guess: String = ""
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct nbaTeamGame_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamGame(level: "")
    }
}
