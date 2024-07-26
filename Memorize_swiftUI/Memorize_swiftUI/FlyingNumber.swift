//
//  FlyingNumber.swift
//  Memorize_swiftUI
//
//  Created by Ilya.Dolgov on 26.07.2024.
//

import SwiftUI

struct FlyingNumber: View {
    let number: Int
    var body: some View {
        if number != 0 {
            Text(number, format: .number)
        }
    }
}

#Preview {
    FlyingNumber(number: 5)
}
