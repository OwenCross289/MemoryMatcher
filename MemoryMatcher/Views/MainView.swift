//
//  MainView.swift
//  MemoryMatcher
//
//  Created by Owen on 23/08/2020.
//  Copyright © 2020 Owen. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) {_ in
                //Structs get free inits that have to be intitialised for all properties that is why this needs is face up
                CardView(isFaceUp: true)
            }
                .padding()
                .foregroundColor(Color.orange)
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View{
            ZStack {
                if isFaceUp {
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0).stroke()
                    Text("👻").font(Font.largeTitle)
                }
                else {
                RoundedRectangle(cornerRadius: 10.0).fill()
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
