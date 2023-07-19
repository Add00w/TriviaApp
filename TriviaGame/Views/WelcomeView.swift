//
//  WelcomeView.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/16/23.
//

import SwiftUI

struct WelcomeView: View {
    @StateObject var triviaManager = TriviaManager()
    var body: some View {
        NavigationView{
            VStack(spacing: 100){
                Text("Trivia Game")
                    .title3()
                Image(systemName: "gamecontroller")
                    .foregroundColor(.white)
               NavigationLink{
                    TriviaView()
                       .environmentObject(triviaManager)
               }  label:{
                   ButtonComponent(text: "Let's Go")
               }
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("AccentColor"))
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
