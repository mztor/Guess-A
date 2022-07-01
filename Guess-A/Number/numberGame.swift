//
//  numberGame.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

struct numberGame: View {
    var level: String
    
    @State var guess: String = ""
    
    var body: some View {
        List {
            VStack {
                
                HStack {
                    Text("Guess a number between 1 and 100")
                    
                }
                .padding()
        
                HStack {
                    
                    TextField("Guess", text: $guess)
                        .border(.black, width: 2.0)
                    Button("Guess") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    
                
                }
                .padding()
                
            }
            
        }
        .toolbar {
            Button("Help"){
                showHelp()
                            }
        }
        
        
    }
}


struct numberGame_Previews: PreviewProvider {
    static var previews: some View {
        numberGame(level: "")
    }
}
