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
                VStack {
                    Text("GUESS")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(0.2)
                        .foregroundColor(.yellow)
                    
                    Text("-A-")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(0.2)
                        .foregroundColor(.black)
                    
                    Text("DOG-O!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(0.2)
                        .foregroundColor(.yellow)
                    
                    Text("EASY")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.black)
                    }
                
                Image(random)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(.yellow,lineWidth: 4))
                    .shadow(radius: 7)
                    .padding(0.2)
                
                VStack {
                    TextField("Dog Breed", text: $guess)
                        .padding()
                        .multilineTextAlignment(.center)
                }
                               
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
        
        Button("Testing Mode") {
            message = (random)
            showingAlert.toggle()
        }
    }
}
        



struct dogBreedGame_Previews: PreviewProvider {
    static var previews: some View {
        dogBreedGame()
        ContentView()
            .preferredColorScheme(.light)
    }
}
