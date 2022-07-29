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
            VStack {
                Text("GUESS")
                    .font(.largeTitle)
                    .padding(0.2)
                Text("A")
                    .font(.largeTitle)
                    .padding(0.2)
                Text("POKÉMON")
                    .font(.largeTitle)
                    .padding(0.2)
            }
            .padding()
            VStack {
                Text("Difficulty Selection")
                RoundedRectangle(cornerRadius: 100, style: .continuous)
                    .frame(width: 160, height: 1)
                VStack {
                    NavigationLink(destination: pokemonGame()) {
                        Text("Easy")
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.green).frame(width: 165, height: 50))
                    }
                    .padding(20)
                    NavigationLink(destination: pokemonGame()) {
                        Text("Hard")
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 165, height: 50))
                    }
                    .padding(20)
                }
                .padding(25)
            }
            .padding(.vertical, 80)
            
        }
    }
}

struct pokemonLevels_Previews: PreviewProvider {
    static var previews: some View {
        pokemonLevels()
    }
}
