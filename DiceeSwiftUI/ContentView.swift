//
//  ContentView.swift
//  DiceeSwiftUI
//
//  Created by StartupBuilder.INFO on 9/1/20.
//  Copyright © 2020 StartupBuilder.INFO. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var dice1: Int = 1
    @State var dice2: Int = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(n:dice1)
                    DiceView(n:dice2)
                }.padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    self.dice1 = Int.random(in: 1...6)
                    self.dice2 = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }.background(Color.red)
                
            }
        }
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice\(n)").resizable()
            .aspectRatio(1.0, contentMode: .fit)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
