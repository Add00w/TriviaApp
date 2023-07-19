//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/16/23.
//

import SwiftUI

struct TriviaView: View {
    @StateObject var triviaManager = TriviaManager()

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .title3()

                Text("Congratulations, you completed the game! 🥳")
                    .title3()
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                    .title3()
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    ButtonComponent(text: "Play again")
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("AccentColor"))
        } else {
            QuestionsView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
    }
}
