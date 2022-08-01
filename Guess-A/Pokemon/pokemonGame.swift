//
//  pokemonGame.swift
//  Guess-A
//
//  Created by William Milne on 28/7/2022.
//

import SwiftUI

struct pokemonGame: View {
    var level: String
    
    var body: some View {
        for _ in 1...3 {
            Text(Int.random(in: 1...5))
        }
    }
}

struct pokemonGame_Previews: PreviewProvider {
    static var previews: some View {
        pokemonGame(level: "")
    }
}
