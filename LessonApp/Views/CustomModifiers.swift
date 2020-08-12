//
//  CustomModifiers.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 12/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct Watermark: ViewModifier {
    var text: String
    func body(content: Content) -> some View {
        ZStack (alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(10)
                .background(Color.gray)
        }
    }
}

extension View {
    func watermark(text: String) -> some View {
        self.modifier(Watermark(text: text))
    }
}
struct CustomModifiers: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .titleStyle()
            Color.orange
                .frame(width: 200, height: 80)
                .watermark(text: "Made by Krzysiek")
        }
    }
}

struct CustomModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifiers()
    }
}
