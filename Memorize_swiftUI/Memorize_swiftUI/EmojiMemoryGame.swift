//
//  EmojiMemoryGame.swift
//  Memorize_swiftUI
//
//  Created by Ilya.Dolgov on 15.07.2024.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["👻","🎃","🕷️","😈","💀","🕸️","🧙","🙀","👹","😱","☠️","🍭"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 2) {
            if emojis.indices.contains($0) {
                return emojis[$0]
            } else {
                return "⁉️"
            }
        }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    var color: Color {
        return .orange
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
        print(cards)
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
