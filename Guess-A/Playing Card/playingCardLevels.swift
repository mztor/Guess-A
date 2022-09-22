//
//  playingCardView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

var testingMode = false //global variable

struct playingCardLevels: View {
    
    @State private var showHelpCard = false //for popups to show
    @State private var testingModeOn = false
    
    var body: some View {
        
        VStack {
            VStack {
                
                Text("GUESS")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(0.2)
                
                Text("A")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(0.2)
                
                Text("PL♠️YING C♦️RD")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .padding(0.2)
            }
            .padding()
            Spacer()
            
            VStack {
                Spacer()
                
                Text("Choose Your Difficulty!")
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.0, saturation: 0.844, brightness: 0.512))
                    .multilineTextAlignment(.center)
                    .padding(0.2)
                
                RoundedRectangle(cornerRadius: 100, style: .continuous)
                    .frame(width: 240, height: 3)
                    .padding(0.4)
                
                Spacer()
                
                NavigationLink(destination: playingCardGame(level: "Beginner")) { //level variable changes conditions in next View
                    Text("Beginner")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.green)
                        .background(RoundedRectangle(cornerRadius: 18).fill(Color.black).frame(width: 165, height: 50))
                        .padding()
                }
                NavigationLink(destination: playingCardGame(level: "Gambler")) {
                    Text("Gambler")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.yellow)
                        .background(RoundedRectangle(cornerRadius: 18).fill(Color.black).frame(width: 165, height: 50))
                        .padding()
                }
                NavigationLink(destination: playingCardGame(level: "Psychic")) {
                    Text("Psychic")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundColor(.red)
                        .background(RoundedRectangle(cornerRadius: 18).fill(Color.black).frame(width: 165, height: 50))
                        .padding()
                }
                Spacer()
            }
        }
        .toolbar {
            HStack {
                Button() { //buttons for testing mode and online help which show alerts
                    
                    testingModeOn.toggle()
                    
                } label: {
                    
                    Image(systemName: "t.circle")
                }
                .alert(isPresented: $testingModeOn) {
                    
                    Alert(title: Text("Testing..."), message: Text("Testing mode has been toggled. Testing Mode is no longer " + String(testingMode) + "."), dismissButton: .default(Text("Ok"), action: { testingMode.toggle()
                    }))
                }
                Button() { //help button
                    
                    showHelpCard.toggle()
                
                } label: {
                    
                    Image(systemName: "questionmark.circle")
                }
                .alert(isPresented: $showHelpCard) {
                    
                    Alert(title: Text("Help!"), message: Text("Select a difficulty from 'Beginner' (Easy), 'Gambler' (Medium) or 'Psychic' (Hard) below to start the game!"), dismissButton: .default(Text("Ok")))
                }
            }
        }
        .navigationBarTitle(Text(""), displayMode: .inline) //reduces white space at top of screen
    }
}

struct playingCardLevels_Previews: PreviewProvider {
    
    static var previews: some View {
        
        playingCardLevels()
    }
}
