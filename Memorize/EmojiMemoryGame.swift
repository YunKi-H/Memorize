//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 매미 on 2022/02/19.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚂", "✈️", "🚁", "🚀", "5", "6", "7", "8", "9", "10", "11", "12"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}