//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 매미 on 2022/02/13.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
