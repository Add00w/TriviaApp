//
//  Extensions.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/16/23.
//

import SwiftUI

// Custom modifier to call this one-liner instead of adding three modifiers every time we create a title Text.
extension Text {
    func title3() -> some View {
        self.font(.title)
            .foregroundColor(.white)
            .font(.title3)
    }
}
