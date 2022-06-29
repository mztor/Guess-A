//
//  numberView.swift
//  Guess-A
//
//  Created by Sarah Tor on 24/6/2022.
//

import SwiftUI

struct numberView: View {
    var body: some View {
        
        VStack {
            NavigationLink(destination: numberGame(level: "Easy")) { Text("Easy") }
                .padding()
            NavigationLink(destination: numberGame(level: "Hard")) { Text("Hard") }
            
        }
        
    }
}

struct numberView_Previews: PreviewProvider {
    static var previews: some View {
        numberView()
    }
}
