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
                    .fontWeight(.heavy)
                    .padding(0.2)
                Text("a")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(0.2)
                Text("NBA Team")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(0.2)
            }
        VStack{
            Image("bball")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical)
                .frame(width: 150)
        }
            VStack{
                Text("Difficulty Selection")
                    .fontWeight(.bold)
                
            }
            VStack{
                
                NavigationLink(destination: nbaTeamGame(level: "Easy")) { Text("Easy")
                    .foregroundColor(Color.black) }
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 2)
                .stroke(.blue, lineWidth: 4)
                    )
                
                
                NavigationLink(destination: nbaTeamGame(level: "Hard")) { Text("Hard")
                    .foregroundColor(Color.black) }
                    .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(.red, lineWidth: 4)
                        )
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
        }
        .padding()
        .toolbar {
            Button("Help"){
                showHelp()
                            }
    }
}

struct nbaTeam_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamLevels()
           
    }
}
}