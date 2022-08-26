//
//  playingCardGame.swift
//  Guess-A
//
//  Created by Joel Braatz on 12/8/2022.
//

import SwiftUI

struct playingCardGame: View {
    var level: String
    @State private var showHelpCard = false
    var body: some View {
        VStack{
            HStack{
                Text("?")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(RoundedRectangle(cornerRadius: 20).fill(Color.blue))
                VStack{
                    
                }
            }
        }
        .toolbar {
            Button() {
                showHelpCard.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
            }
            .alert(isPresented: $showHelpCard) {
                Alert(title: Text("Help!"), message: Text("Select one of the Suite buttons and a value for your card, then press Enter!"), dismissButton: .default(Text("Ok")))
            }
        }
    }
}

struct playingCardGame_Previews: PreviewProvider {
    static var previews: some View {
        playingCardGame(level: "")
    }
}
