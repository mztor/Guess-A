//
//  ContentView.swift
//  Guess-A
//
//  Created by Sarah Tor on 23/6/2022.


import SwiftUI

struct ContentView: View {
    var body: some View {
        
       
        NavigationView {
            
            List{

                NavigationLink(destination: numberView()) { Text("Guess a number") }
                 
                   
                NavigationLink(destination: nbaTeamView()) { Text("Guess a NBA team") }
                

                NavigationLink(destination: playingCardView()) {Text("Guess a Playing Card") }

                NavigationLink(
                    destination: pokemonView()) { Text("Guess a Pokemon") }
                
                NavigationLink(destination: marvelView()) { Text("Guess a Marvel Character") }
                NavigationLink(destination: carBrandView()) { Text("Guess a Car Brand") }
                NavigationLink(destination: fruitView()) { Text("Guess a Fruit") }
                NavigationLink(destination: allBlacksPlayerView()) { Text("Guess a All Blacks Player") }
                NavigationLink(destination: letterView()) { Text("Guess a Letter") }
                NavigationLink(destination: dogBreedLevels()) { Text("Guess a Dog Breed") }

            }
            


            .navigationTitle("Guess-A")
            .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            
        }


    }
}
struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
