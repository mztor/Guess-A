//
//  DogBreedGame.swift
//  Guess-A
//
//  Created by Ruby Trinajstic on 26/8/2022.
//

import SwiftUI

struct dogBreedGame: View {
    var BreedsArray = ["German Shepherd","Golden Retriever","Bulldog","French Bulldog","Beagle","YorkShire Terrior","Poodle","Rottweiler","Boxer","Siberian Husky","Doberman"]
    @State private var guess = ""
    @State private var showingAlert = false
    @State private var random = ""
    @State private var message = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Guess")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
            
                TextField("Dog Breed", text: $guess)
                           .padding()
               Text(random)
               Button("Check") {
                   if guess == random {
                       message = "Good job! You Guessed Correctly"
                   } else {
                       message = "Incorrect :("
                   }
                   showingAlert.toggle()
               }
                Spacer()
            }
            
            .alert(message, isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
        }
            .onAppear() {
            random = BreedsArray.randomElement()!
            }
    }
}
        



struct dogBreedGame_Previews: PreviewProvider {
    static var previews: some View {
        dogBreedGame()
    }
}
