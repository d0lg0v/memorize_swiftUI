//
//  Memorize_swiftUIApp.swift
//  Memorize_swiftUI
//
//  Created by Ilya.Dolgov on 10.07.2024.
//

import SwiftUI

@main
struct Memorize_swiftUIApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
