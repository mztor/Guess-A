//
//  MarvelGame.swift
//  Guess-A
//
//  Created by Alexandra Southern on 28/7/22.
//

import SwiftUI

struct marvelGame: View {
    
    var level: String

    var body: some View {
            
        VStack {
            VStack {
                Text("GUESS")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(0.2)
               
                Text("- A -")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(0.2)
               
                Text("MARVEL CHARACTER")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(0.2)
                    .foregroundColor(.red)
            }
            .padding()
            Spacer()

        }
        .toolbar {
            Button("Help"){
                showHelp()
                            }
        }

    }
}
struct marvelGame_Previews: PreviewProvider {
    static var previews: some View {
        marvelGame(level: "")
        }
    }


