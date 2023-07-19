//
//  ButtonComponent.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/15/23.
//

import SwiftUI

struct ButtonComponent: View {
    var text:String
    var background: Color = .blue
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
    }
}

struct ButtonComponent_Previews: PreviewProvider {
    static var previews: some View {
        ButtonComponent(text: "Next")
    }
}
