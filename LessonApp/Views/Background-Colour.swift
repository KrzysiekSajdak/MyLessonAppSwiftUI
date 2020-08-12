//
//  Background-Colour.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 10/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Background_Colour: View {
    
    @State var label: String = "Before Press On"
    @State var onPressed: Bool = false
    @State var counter: Int = 0
    
    var body: some View {
        ZStack {
            Color(.white).edgesIgnoringSafeArea(.all)
            VStack {
                VStack {
                    Text(label)
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                    Text("\(counter)")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.orange)
                    .edgesIgnoringSafeArea(.all)
                    .padding(20)
                Button("Press me") {
                    self.label = "After Press"
                    self.onPressed.toggle()
                    self.counter += 1
                    print(type(of: self.body))
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(self.onPressed ? Color.green : Color.blue)
                    .edgesIgnoringSafeArea(.all)
                    .foregroundColor(.white)
                    .font(.system(size: 40, weight: .black, design: .rounded))
                    .clipShape(Capsule())
                    .padding(20)
                
            }
        }
    }
}

struct Background_Colour_Previews: PreviewProvider {
    static var previews: some View {
        Background_Colour()
    }
}
