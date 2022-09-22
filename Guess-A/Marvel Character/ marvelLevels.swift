//
//  marvelView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI
import UIKit
import Combine

struct marvelLevels: View {
    @State var showingAlert = false
    @State var message: String = ""
    @State var buttonGuess: String = "Guess"
    @State var caption = "OK"
    
    var body: some View {
        VStack {
            VStack {
                Text("GUESS")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(0.2)
                    .multilineTextAlignment(.center)

                Text("- A -")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(0.2)
                    .multilineTextAlignment(.center)

                Text("MARVEL CHARACTER")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(0.2)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)

            }
            .padding()
       
            VStack {
                
                VStack {
                    NavigationLink(destination: marvelGame(guess: "", level: "Beginner")) {
                        Text("Beginner")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 165, height: 50))
                    }
                    .padding(1)
                    
                NavigationLink(destination: marvelGame(guess: "", level: "Intermediate")) { //the navigation link that goes to the intermediate game - the one which has been completely coded
                        Text("Intermediate")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 165, height: 50))
                    }
                    .padding(40)
                   
                NavigationLink(destination: marvelGame(guess: "", level: "Advanced")) {
                        Text("Advanced")
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 165, height: 50))
                    }
                    .padding(1)
                }
                .padding(25)
                }
            }
                .navigationTitle("Marvel Characters")
                
            .toolbar {
                Button("?") { //help button providing online help
                    message = ("Select the level to go to the game screen for individual levels using the buttons on the screen.")
                    showingAlert.toggle()

                    }
                
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text(""), message: Text(message),
                            dismissButton: .default(Text(caption), action:{
                            
                    })
                )
            }
        }
    }
}

struct marvelLevels_Previews: PreviewProvider {
    static var previews: some View {
        marvelLevels()
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
