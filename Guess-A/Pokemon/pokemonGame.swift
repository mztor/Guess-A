//
//  pokemonGame.swift
//  Guess-A
//
//  Created by William Milne on 28/7/2022.
//

import SwiftUI




struct pokemonGame: View {
    var level: String
    var correct: String
    var body: some View {
        Text(correct)
            .toolbar {
                Image(systemName: "questionmark.circle")
                    .foregroundColor(.blue)
            }
    }
}

struct pokemonGame_Previews: PreviewProvider {
    static var previews: some View {
        pokemonGame(level: "", correct: "")
    }
}
