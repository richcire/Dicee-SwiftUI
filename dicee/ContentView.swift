//
//  ContentView.swift
//  dicee
//
//  Created by 연민석 on 4/13/26.
//

import SwiftUI

struct ContentView: View {

    @State var leftNum = 1
    @State var rightNum = 1

    var body: some View {
        ZStack {
            Image("background").resizable().ignoresSafeArea()
            Image("diceeLogo")
            VStack {
                Spacer()
                HStack {
                    DiceView(n: leftNum)
                    DiceView(n: rightNum)
                }.padding()
                Spacer()
                Button("Roll") {
                    leftNum = Int.random(in: 1...6)
                    rightNum = Int.random(in: 1...6)
                }
                .font(.system(size: 50, weight: .heavy))
                .foregroundStyle(.white)
            }
        }

    }
}

struct DiceView: View {
    let n: Int

    var body: some View {
        Image("dice\(n)").resizable().aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

#Preview {
    ContentView()
}
