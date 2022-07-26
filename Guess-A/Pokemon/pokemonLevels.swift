//
//  pokemonView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

struct pokemonLevels: View {
    var body: some View {
        VStack {
            Text("GUESS")
                .padding(0.2)
            Text("A")
                .padding(0.2)
            Text("POKÉMON")
                .padding(0.2)
        }
    }
}

struct pokemonLevels_Previews: PreviewProvider {
    static var previews: some View {
        pokemonLevels()
    }
}
