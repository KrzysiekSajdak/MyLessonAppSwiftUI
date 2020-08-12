//
//  Images-Layout.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 08/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Images_Layout: View {
    
    @State private var countries = ["Germany", "Ireland", "Italy", "Nigeria",
                                    "Poland", "Russia", "Spain", "UK", "USA"].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State var scoreTitle: String = ""
    @State var showingScore: Bool = false
    
    var body: some View {
        ZStack {
            Color(red: 234/255, green: 235/255, blue: 227/255, opacity: 0.7)
                .edgesIgnoringSafeArea(.all)
            LinearGradient(gradient: Gradient(colors: [Color(red: 234/255, green: 235/255, blue: 227/255, opacity: 0.7), .primary]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .font(.system(size: 24, weight: .medium))
                    Text(countries[correctAnswer])
                        .font(.system(size: 36, weight: .black))
                }
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.flagTapped(number)
                    }) {
                        Image(self.countries[number])
                            .resizable()
                            .frame(width: 200, height: 110)
                            .clipShape(Capsule())
                            .overlay(Capsule().stroke(Color.primary, lineWidth: 2))
                            .shadow(radius: 4)
                        //.renderingMode(.original)
                    }
                }.buttonStyle(PlainButtonStyle())
                Spacer()
            }.padding()
        }.alert(isPresented: $showingScore) { Alert(title: Text(scoreTitle), message: Text("Your score is ???"), dismissButton: .default(Text("Continue")){
            self.askQuestion()
            })
        }
    }
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }    
    func askQuestion() {
        self.correctAnswer = Int.random(in: 0...2)
        countries.shuffled()
    }
}

struct Images_Layout_Previews: PreviewProvider {
    static var previews: some View {
        Images_Layout()
    }
}
