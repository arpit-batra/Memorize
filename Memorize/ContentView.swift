//
//  ContentView.swift
//  Memorize
//
//  Created by Arpit Batra on 31/01/24.
//

import SwiftUI

struct ContentView: View {
    let emojis : [String] = ["👻","🥹","🤡","🎙️","🤑"]
    var body: some View {
        HStack {
//            ForEach(0..<4,id: \.self){index in
//                Card(content: emojis[index])
//            }
            ForEach(emojis, id: \.self){ emoji in
                Card(content: emoji)
            }
        }.foregroundColor(.orange)
        .padding()
    }
    
}

struct Card : View {
    @State var isFaceUp = true
    var content : String
    var body: some View{
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if(isFaceUp){
                base.fill(.white)
                base.stroke(lineWidth: 2)
                Text(content).font(.largeTitle)
            }else{
                base.fill()
            }
            
        }.onTapGesture() {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
