//
//  Memorize_swiftUITests.swift
//  Memorize_swiftUITests
//
//  Created by Ilya.Dolgov on 10.07.2024.
//

import XCTest
@testable import Memorize_swiftUI

final class Memorize_swiftUITests: XCTestCase {
    let emojis = ["👻","🎃","🕷️","😈","💀","🕸️","🧙","🙀","👹","😱","☠️","🍭"]
    
    private func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 2) {
            if emojis.indices.contains($0) {
                return emojis[$0]
            } else {
                return "⁉️"
            }
        }
    }

    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func testExample() throws {         
        var model = createMemoryGame()
        XCTAssertFalse(model.cards[0].isFaceUp)
        XCTAssertFalse(model.cards[0].isMatched)
        model.choose(model.cards[0])
        XCTAssertTrue(model.cards[0].isFaceUp)
        XCTAssertFalse(model.cards[0].isMatched)
        model.choose(model.cards[1])
        XCTAssertTrue(model.cards[0].isFaceUp)
        XCTAssertTrue(model.cards[1].isFaceUp)
        XCTAssertTrue(model.cards[0].isMatched)
        XCTAssertTrue(model.cards[1].isMatched)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
