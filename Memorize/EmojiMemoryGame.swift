//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by ๋งค๋ฏธ on 2022/02/19.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["๐", "โ๏ธ", "๐", "๐", "๐", "๐", "๐", "๐ฒ", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐", "๐ป", "๐ด", "๐ต"]
    
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
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
