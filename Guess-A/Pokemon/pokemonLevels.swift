//
//  pokemonView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

var randomNum = 0

func randomNumGen() -> String {
    
    randomNum = Int.random(in: 0...150)
    
    return numbered.pokemon[randomNum]
    
}
// Generates a random number that then indexes the Pokémon of that number and provides it

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
            // Creates the title
            
            VStack {
                
                Text("Difficulty Selection")
                RoundedRectangle(cornerRadius: 100, style: .continuous)
                    .frame(width: 160, height: 3)
                
                VStack {
                    
                    NavigationLink(destination: pokemonGame(level: "easy", correct: randomNumGen())) {
                        Text("Easy")
                            .foregroundColor(.green)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.black).frame(width: 165, height: 50))
                    }
                    .padding(20)
                    
                    NavigationLink(destination: pokemonGame(level: "hard", correct: randomNumGen())) {
                        Text("Hard")
                            .foregroundColor(.red)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.black).frame(width: 165, height: 50))
                    }
                    .padding(20)
                    
                }
                .padding(25)
                // Creates the buttons that take the user to the game
                
            }
            .padding(.vertical, 80)
            .toolbar {
                NavigationLink(destination: pokemonTesting(correct: randomNumGen())) {
                    Image(systemName: "t.square")
                }
                    .foregroundColor(.blue)
            }
            // Takes user to testing mode
            
            
            
        }
    }
}

struct pokemonLevels_Previews: PreviewProvider {
    
    static var previews: some View {
        
        pokemonLevels()
        
    }
}
