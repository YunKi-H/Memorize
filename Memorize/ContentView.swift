//
//  ContentView.swift
//  Memorize
//
//  Created by 매미 on 2022/02/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack() {
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(lineWidth: 3)
            
            Text("Hello, world!")
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
