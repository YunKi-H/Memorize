//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 매미 on 2022/02/19.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚂", "✈️", "🚁", "🚀", "🚗", "🚑", "🚐", "🚲", "🚚", "🚛", "🚜", "🚕", "🚙", "🚌", "🚎", "🏎", "🚓", "🚒", "🛻", "🛴", "🛵"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
