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
            Card(isFlipped: true)
            Card()
            Card()
            Card()
        }
        .padding()
    }
    
}

struct Card : View {
    var isFlipped: Bool = false
    var body: some View{
        ZStack{
            if(isFlipped){
                RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/)
            }else{
                RoundedRectangle(cornerSize: /*@START_MENU_TOKEN@*/CGSize(width: 20, height: 10)/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            Text("🥹")
        }
    }
}

#Preview {
    ContentView()
}
