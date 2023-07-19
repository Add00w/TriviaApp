//
//  ChoiceComponent.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/15/23.
//

import SwiftUI

struct ChoiceComponent: View {
    @EnvironmentObject var triviaManager: TriviaManager
       var answer: Answer
       @State private var isSelected = false

    var body: some View {
        ZStack{
            HStack{}
                .frame(maxWidth:340,maxHeight:60)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.5,opacity: 0.5))
                .background(.gray.opacity(0.5))
                .cornerRadius(15)
            HStack{}
                .frame(maxWidth:332,maxHeight:50)
                .background(Color("AccentColor"))
                .cornerRadius(15)

            HStack{
                Text(answer.text)
                    .foregroundColor(.white)
                    .font(.body)
                    .lineLimit(2)
                Spacer()
                ZStack{
                    Circle()
                        .frame(maxWidth: 30,maxHeight: 30)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.5,opacity: 0.5))
                  
                 
                    
                    if isSelected {
                        Image(systemName: "checkmark")
                                .foregroundColor(.white)
                                .frame(maxWidth: 20,maxHeight:20)
                                .cornerRadius(20)
                            .background(Color(.blue))
                    } else {
                        Circle()
                              .frame(maxWidth: 28,maxHeight: 28)
                              .foregroundColor(Color("AccentColor"))
                    }
                        
                }

                
            }.background(Color("AccentColor")).padding()
        }.onTapGesture {
            if !triviaManager.answerSelected {
                isSelected = true
                triviaManager.selectAnswer(answer: answer)

            }
        }
        
    }
}

struct ChoiceComponent_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceComponent(answer: Answer(text: "Single", isCorrect:  false))
            .environmentObject(TriviaManager())
    }
}
