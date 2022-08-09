//
//  NBAteam.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

struct nbaTeamLevels: View {
    var body: some View {
        VStack{
            VStack{Text("Guess")
                    .font(.largeTitle)
                    .padding(0.2)
                Text("a")
                    .font(.largeTitle)
                    .padding(0.2)
                Text("NBA Team")
                    .font(.largeTitle)
                    .padding(0.2)
            }
        VStack{
            Image("bball")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150)
        }
            VStack{
                Text("Difficulty Selection")
                
            }
            VStack{
                
                NavigationLink(destination: numberGame(level: "Easy")) { Text("Easy")
                    .foregroundColor(Color.black) }
                    .padding()
                
                
                NavigationLink(destination: numberGame(level: "Hard")) { Text("Hard")
                    .foregroundColor(Color.black) }
                    .padding()
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
        }
        .padding()
    }
}

struct nbaTeam_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamLevels()
           
    }
}
