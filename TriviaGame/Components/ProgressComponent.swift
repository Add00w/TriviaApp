//
//  ProgressComponent.swift
//  TriviaGame
//
//  Created by Abdullahi Addow on 7/15/23.
//

import SwiftUI

struct ProgressComponent: View {
    var progress:CGFloat
    var body: some View {
        let progressBarWidth:CGFloat=500
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: progressBarWidth,maxHeight: 50)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.5,opacity: 0.5))
                .cornerRadius(30)
            Rectangle()
                .frame(maxWidth: progressBarWidth-5,maxHeight: 46)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(18)
            Rectangle()
                .frame(maxWidth: progress*progressBarWidth,maxHeight: 46)
                .foregroundColor(.pink)
                .cornerRadius(18)
            
            HStack{
                Spacer()

                Text("25")
                    .foregroundColor(.white)
                    .font(.title3)
                Spacer()
                Image(systemName: "timer")
                    .foregroundColor(.white)
                    .frame(maxWidth: 30,maxHeight: 30)
                
            }.padding(.trailing,8)
            .frame(maxWidth: progressBarWidth)
            
        }
    }
    
}
    struct ProgressComponent_Previews: PreviewProvider {
        static var previews: some View {
            ProgressComponent(progress:0.9)
        }
    }

