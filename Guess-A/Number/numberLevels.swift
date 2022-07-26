//
//  numberView.swift
//  Guess-A
//
//  Created by Sarah Tor on 24/6/2022.
//

import SwiftUI

struct numberLevels: View {
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Ms Tor was here")
                .fontWeight(.bold)
                Spacer()
            }
                
            NavigationLink(destination: numberGame(level: "Easy")) { Text("Easy") }
                .padding()
            
            NavigationLink(destination: numberGame(level: "Hard")) { Text("Hard") }
                .padding()
            
        }
        
        .toolbar {
            Button("Help"){
                //show the help for Guess a number difficulty
                            }
        }
        .padding()
        .navigationTitle("Guess A Number")
    }
}

struct numberLevels_Previews: PreviewProvider {
    static var previews: some View {
        numberLevels()
    }
}
