//
//  ContentView.swift
//  Guess-A
//
//  Created by Sarah Tor on 23/6/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: numberView()) { Text("Guess a number") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
