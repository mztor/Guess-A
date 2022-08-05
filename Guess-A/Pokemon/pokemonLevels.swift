//
//  pokemonView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

var randomNum = 0
func randomNumGen() -> String {
    randomNum = Int.random(in: 1...51)
    if randomNum == 1 {
        return numbered.pkm1
    }
    if randomNum == 2 {
        return numbered.pkm2
    }
    if randomNum == 3 {
        return numbered.pkm3
    }
    if randomNum == 4 {
        return numbered.pkm4
    }
    if randomNum == 5 {
        return numbered.pkm5
    }
    if randomNum == 6 {
        return numbered.pkm6
    }
    if randomNum == 7 {
        return numbered.pkm7
    }
    if randomNum == 8 {
        return numbered.pkm8
    }
    if randomNum == 9 {
        return numbered.pkm9
    }
    if randomNum == 10 {
        return numbered.pkm10
    }
    if randomNum == 11 {
        return numbered.pkm11
    }
    if randomNum == 12 {
        return numbered.pkm12
    }
    if randomNum == 13 {
        return numbered.pkm13
    }
    if randomNum == 14 {
        return numbered.pkm14
    }
    if randomNum == 15 {
        return numbered.pkm15
    }
    if randomNum == 16 {
        return numbered.pkm16
    }
    if randomNum == 17 {
        return numbered.pkm17
    }
    if randomNum == 18 {
        return numbered.pkm18
    }
    if randomNum == 19 {
        return numbered.pkm19
    }
    if randomNum == 20 {
        return numbered.pkm20
    }
    if randomNum == 21 {
        return numbered.pkm21
    }
    if randomNum == 22 {
        return numbered.pkm22
    }
    if randomNum == 23 {
        return numbered.pkm23
    }
    if randomNum == 24 {
        return numbered.pkm24
    }
    if randomNum == 25 {
        return numbered.pkm25
    }
    if randomNum == 26 {
        return numbered.pkm26
    }
    if randomNum == 27 {
        return numbered.pkm27
    }
    if randomNum == 28 {
        return numbered.pkm28
    }
    if randomNum == 29 {
        return numbered.pkm29
    }
    if randomNum == 30 {
        return numbered.pkm30
    }
    if randomNum == 31 {
        return numbered.pkm31
    }
    if randomNum == 32 {
        return numbered.pkm32
    }
    if randomNum == 33 {
        return numbered.pkm33
    }
    if randomNum == 34 {
        return numbered.pkm34
    }
    if randomNum == 35 {
        return numbered.pkm35
    }
    if randomNum == 36 {
        return numbered.pkm36
    }
    if randomNum == 37 {
        return numbered.pkm37
    }
    if randomNum == 38 {
        return numbered.pkm38
    }
    if randomNum == 39 {
        return numbered.pkm39
    }
    if randomNum == 40 {
        return numbered.pkm40
    }
    if randomNum == 41 {
        return numbered.pkm41
    }
    if randomNum == 42 {
        return numbered.pkm42
    }
    if randomNum == 43 {
        return numbered.pkm43
    }
    if randomNum == 44 {
        return numbered.pkm44
    }
    if randomNum == 45 {
        return numbered.pkm45
    }
    if randomNum == 46 {
        return numbered.pkm46
    }
    if randomNum == 47 {
        return numbered.pkm47
    }
    if randomNum == 48 {
        return numbered.pkm48
    }
    if randomNum == 49 {
        return numbered.pkm49
    }
    if randomNum == 50 {
        return numbered.pkm50
    }
    if randomNum == 51 {
        return numbered.pkm51
    }
    else {
        return ""
    }
}
struct pokemonLevels: View {
    var body: some View {
        VStack {
            VStack {
                Text("GUESS")
                    .font(.largeTitle)
                    .padding(0.2)
                Text("A")
                    .font(.largeTitle)
                    .padding(0.2)
                Text("POKÉMON")
                    .font(.largeTitle)
                    .padding(0.2)
            }
            .padding()
            VStack {
                Text("Difficulty Selection")
                RoundedRectangle(cornerRadius: 100, style: .continuous)
                    .frame(width: 160, height: 1)
                VStack {
                    NavigationLink(destination: pokemonGame(level: "easy", correct: randomNumGen())) {
                        Text("Easy")
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.green).frame(width: 165, height: 50))
                    }
                    .padding(20)
                    NavigationLink(destination: pokemonGame(level: "hard", correct: randomNumGen())) {
                        Text("Hard")
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 165, height: 50))
                    }
                    .padding(20)
                }
                .padding(25)
            }
            .padding(.vertical, 80)
            
        }
    }
}

struct pokemonLevels_Previews: PreviewProvider {
    static var previews: some View {
        pokemonLevels()
    }
}
