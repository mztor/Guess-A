//
//  dogBreedView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI
import UIKit
import Combine

struct dogBreedLevels: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("GUESS")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(0.2)
                    .foregroundColor(.yellow)
                Text("- A -")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(0.2)
                Text("DOGGO!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(2.0)
                    .foregroundColor(.yellow)

                NavigationLink(destination:
                    dogBreedGame()) {
                    Text("BEGINNER")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .background(RoundedRectangle (cornerRadius:18).fill(Color.yellow)
                            .frame(width:165, height:50))
                    }
                .padding()
                
                NavigationLink(destination: dogBreedGame()) {
                    Text("MEDIUM")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .background(RoundedRectangle (cornerRadius:18).fill(Color.yellow)
                            .frame(width:165, height:50))
                        
                }
                .padding()
                
                NavigationLink(destination: dogBreedGame()) {
                    Text("HARD")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .background(RoundedRectangle (cornerRadius:18).fill(Color.yellow)
                            .frame(width:165, height:50))
                
                }
                .padding()
            }
        }
    }
}


struct dogBreedLevels_Previews: PreviewProvider {
    static var previews: some View {
        dogBreedLevels()
        }
    }

