//
//  QuestionsView.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/15/23.
//

import SwiftUI
struct QuestionsView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 40){
                VStack(alignment:.leading,spacing: 24){
                    Text("\(Text("Question \(triviaManager.index + 1)").font(.largeTitle))/\(triviaManager.length)")
                         .foregroundColor(Color("TitleColor"))
                         .font(.title3)
                     Divider()
                        .frame(height: 0.25)
                         .background(Color("TitleColor"))
                     
                    Text(triviaManager.question)
                        .title3()
                        .fixedSize(horizontal: false, vertical: true)
                        
                }
                ForEach(triviaManager.answerChoices, id: \.id) { answer in
                    ChoiceComponent(answer: answer)
                                       .environmentObject(triviaManager)
                               }
                
               Spacer()
                Button(action: {
                    triviaManager.goToNextQuestion()
                }, label: {
                    ButtonComponent(text: "Next", background: triviaManager.answerSelected ? .blue : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                }).disabled(!triviaManager.answerSelected)
                    
            }
            
        }.padding(24)
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(Color("AccentColor"))
            .navigationBarHidden(true)
    }
}

struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView().environmentObject(TriviaManager())
    }
}
