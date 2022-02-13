//
//  ContentView.swift
//  Memorize
//
//  Created by 매미 on 2022/02/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .stroke(lineWidth: 3)
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
