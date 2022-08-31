//
//  nbaTeamGame.swift
//  Guess-A
//
//  Created by Harris Awan on 11/8/2022.
//

import SwiftUI
enum ActiveAlert{
    case correct, incorrect
}
struct nbaTeamGame: View {
    @State private var showHelpCard = false
    @State private var correctA = false
    @State var activeAlert: ActiveAlert = .incorrect
    
    var level: String
    
    @State var guess: String = ""
    var body: some View {
        VStack{
            Text("Guess The Team")
                .fontWeight(.bold)
            Image(answers[randomNum1])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical)
                .frame(width: 150)
            VStack {
                Button(answers[randomNum1]) {
                    if randomNum1 == randomNum1{
                        correctA.toggle()
                        self.activeAlert = .correct
                        currentScore = currentScore + 1

                    }
                }
                .padding(.vertical)
                
                
                
                Button(answers[randomNum2]) {
                    if randomNum2 != randomNum1{
                        correctA.toggle()
                        self.activeAlert = .incorrect
                        
                    }
                }
                .padding(.vertical)
                
                Button(answers[randomNum3]) {
                    if randomNum3 != randomNum1{
                        correctA.toggle()
                        self.activeAlert = .incorrect
                        
                    }
                }
                .padding(.vertical)
                
                
                
        
        }
            .onAppear(){
                generaterandomNum()
            }
            .alert(isPresented: $correctA) {
                switch activeAlert{
                case .correct:
                    return Alert(title: Text("Correct"),
                                                       
                    dismissButton:
                            .default(Text("Ok"), action: {randomNum1 = Int.random(in: 1..<8); randomNum2 = Int.random(in: 1..<8);
                                randomNum3 = Int.random(in: 1..<8)
                            })
                    )
                case .incorrect:
                    return Alert(title: Text("Wrong"),
                                                       
                    dismissButton:
                        .default(Text("Ok")
                                ))
                }
                
        
                
            }
            
          
          
        }
        .padding()
        .toolbar {
            Button() {
                showHelpCard.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
            }
            .alert(isPresented: $showHelpCard) {Alert(title: Text("Help!"), message: Text("To guess the team name press on a button below the image"),
                
                
                                                      
                                                      
                dismissButton:
                    .default(Text("Ok")))
                
            }
    }
}


struct nbaTeamGame_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamGame(level: "")
    }
}
}
