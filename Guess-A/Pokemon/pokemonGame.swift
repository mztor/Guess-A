//
//  pokemonGame.swift
//  Guess-A
//
//  Created by William Milne on 28/7/2022.
//

import SwiftUI

var randomNum = 0
var msg = ""
struct pokemonGame: View {
    var level: String
    var body: some View {
        Text(msg)
        .onAppear() {
            randomNum = Int.random(in: 1...5)
            if randomNum == 1 {
                msg = "1"
            }
            if randomNum == 2 {
                msg = "2"
            }
            if randomNum == 3 {
                msg = "3"
            }
            if randomNum == 4 {
                msg = "4"
            }
            if randomNum == 5 {
                msg = "5"
            }
        }
    }
}

struct pokemonGame_Previews: PreviewProvider {
    static var previews: some View {
        pokemonGame(level: "")
    }
}
