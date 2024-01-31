//
//  ContentView.swift
//  Memorize
//
//  Created by Arpit Batra on 31/01/24.
//

import SwiftUI

struct ContentView: View {
   
    
    
    var body: some View {
        HStack {
            Card(isFaceUp: true)
            Card()
            Card()
            Card()
        }.foregroundColor(.orange)
        .padding()
    }
    
}

struct Card : View {
    @State var isFaceUp = false
    var body: some View{
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if(isFaceUp){
                base.fill(.white)
                base.stroke(lineWidth: 2)
                Text("🥹").font(.largeTitle)
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
