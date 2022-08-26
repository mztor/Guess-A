//
//  NBAteam.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

struct nbaTeamLevels: View {
    @State private var showHelpCard = false
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
            Spacer()
        VStack{
            Image("bball")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical)
                .frame(width: 150)
        }
            Spacer()
            VStack{
                Text("Difficulty Selection")
                RoundedRectangle(cornerRadius: 100, style: .continuous)
                    .frame(width: 160, height: 3.627)
                
            }
            Spacer()
            Spacer()
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
            Button() {
                showHelpCard.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
            }
            .alert(isPresented: $showHelpCard) {Alert(title: Text("Help!"), message: Text("*Choose the desired difficulty located under 'Difficulty Selection'."),
                message:Text("."),
                message:Text("."),
                
                                                      
                                                      
                dismissButton:
                    .default(Text("Ok")))
                
            }
    }
    }

struct nbaTeam_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamLevels()
           
    }
}
}
