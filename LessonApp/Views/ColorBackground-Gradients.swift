//
//  ColorBackground.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 08/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct ColorBackground_Gradients: View {
    var body: some View {
        ZStack {
            Color(.red).edgesIgnoringSafeArea(.all)
            LinearGradient(gradient: Gradient(colors: [.red, .white]),
                           startPoint: .top,
                           endPoint: .bottom).frame(width: 200).edgesIgnoringSafeArea(.all)
            ZStack {
                
                RadialGradient(gradient: Gradient(colors: [.white, .red]), center: .center, startRadius: 2, endRadius: 180)
                    .frame(width: 220, height: 220)
                    .cornerRadius(180)
                    .clipped()
                    .shadow(color: Color.red, radius: 10, x: 10, y: 10)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.red)
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

struct ColorBackground_Gradients_Previews: PreviewProvider {
    static var previews: some View {
        ColorBackground_Gradients()
    }
}
