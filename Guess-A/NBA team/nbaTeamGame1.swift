//
//  nbaTeamGame1.0.swift
//  Guess-A
//
//  Created by Harris Awan on 18/9/2022.
//

import SwiftUI
enum ActiveAlert{
    case correct, incorrect
}
struct nbaTeamGame1_0: View {
    var level: String
    @State private var showHelpCard = false
    @State private var correctA = false
    @State var activeAlert: ActiveAlert = .incorrect
    @State var guess: String = ""
    var body: some View {
        List{
        VStack{
            Text("Guess The Team")
                    .fontWeight(.bold)
            Image(answers[randomNum1])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.vertical)
                    .frame(width: 250)
        
            TextField("Guess", text: $guess)
                .border(.black, width: 2.0)
        }
            Button("Guess") {
                if answers[randomNum1] == answers[randomNum1]{
                    correctA.toggle()
                    self.activeAlert = .correct
                    currentScore = currentScore + 1
                }
                
                else {
                    correctA.toggle()
                    self.activeAlert = .incorrect
                }
            }
            
            
        }
        .alert(isPresented: $correctA) {
            switch activeAlert{
            case .correct:
                return Alert(title: Text("Correct"),

        dismissButton:
        .default(Text("Ok"),
            action: {
            generaterandomNum()
                })
                )
            case .incorrect:
                return Alert(title: Text("Wrong"),

        dismissButton:
        .default(Text("Ok"),
            action: {
            generaterandomNum()
            })
                                     )
            }



        }
        
    }
}
    






struct nbaTeamGame1_0_Previews: PreviewProvider {
    static var previews: some View {
        nbaTeamGame1_0(level: "")
    }
}
