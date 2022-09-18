//
//  finalScreen.swift
//  Guess-A
//
//  Created by Harris Awan on 18/9/2022.
//

import SwiftUI

struct finalScreen: View {
    var finalPercentage =  (currentScore/maxScore)*100
    var body: some View {
            Text("Final Score is")
            Text(String(finalPercentage))
            Text("%")
        
    }
}

struct finalScreen_Previews: PreviewProvider {
    static var previews: some View {
        finalScreen()
    }
}
