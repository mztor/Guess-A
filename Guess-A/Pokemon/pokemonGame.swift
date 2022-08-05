//
//  pokemonGame.swift
//  Guess-A
//
//  Created by William Milne on 28/7/2022.
//

import SwiftUI



var randomNum = 0
var pokemon = ""
struct pokemonGame: View {
    var level: String
    var body: some View {
        Text("Guess a pokémon")
        .onAppear() {
            if level == "easy" {
                randomNum = Int.random(in: 1...5)
                if randomNum == 1 {
                    pokemon = numbered.pkm1
                }
                if randomNum == 2 {
                    pokemon = numbered.pkm2
                }
                if randomNum == 3 {
                    pokemon = numbered.pkm3
                }
                if randomNum == 4 {
                    pokemon = numbered.pkm4
                }
                if randomNum == 5 {
                    pokemon = numbered.pkm5
                }
            }
            if level == "hard" {
                randomNum = Int.random(in: 6...10)
                if randomNum == 6 {
                    pokemon = numbered.pkm6
                }
                if randomNum == 7 {
                    pokemon = numbered.pkm7
                }
                if randomNum == 8 {
                    pokemon = numbered.pkm8
                }
                if randomNum == 9 {
                    pokemon = numbered.pkm9
                }
                if randomNum == 10 {
                    pokemon = numbered.pkm10
                }
            }
        }
        Text(pokemon)
    }
}

struct pokemonGame_Previews: PreviewProvider {
    static var previews: some View {
        pokemonGame(level: "")
    }
}
