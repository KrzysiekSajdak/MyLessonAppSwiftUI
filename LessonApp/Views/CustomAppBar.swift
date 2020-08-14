//
//  CustomAppBar.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 14/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct CustomAppBar: View {
    
    var backgroundColour: UIColor
    var title: String
    var opacity: Double
    
    var names: [String] = [
        "Krzysiek",
        "Magda",
        "Kacper",
        "Nicholas",
        "Krzysiek",
        "Magda",
        "Kacper",
        "Nicholas",
        "Krzysiek",
        "Magda",
        "Kacper",
        "Nicholas"]
    
    var body: some View {
        VStack {
            ZStack {
                // Color(backgroundColour).opacity(0.5).edgesIgnoringSafeArea(.all)
                VStack (alignment: .leading) {
                    Text(title).font(.system(size: 34, weight: .bold, design: .default)).padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Add")
                                .buttonStyle(labelFontSize: 15, labelFontWeight: .semibold, foregroundColour: .green, backgroundColour: .green, maxWidth: .infinity, maxHeight: 35, opacity: 0.2, cornerRadius: 10, paddingTop: 0, paddingLeading: 0, paddingBottom: 0, paddingTrailing: 0)
                        } //Button
                        Button(action: {
                            
                        }) {
                            Text("Menu")
                                .buttonStyle(labelFontSize: 15, labelFontWeight: .semibold, foregroundColour: .secondary, backgroundColour: Color(.secondarySystemBackground), maxWidth: .infinity, maxHeight: 35, opacity: 0.8, cornerRadius: 10, paddingTop: 0, paddingLeading: 0, paddingBottom: 0, paddingTrailing: 0)
                        } //Button
                        Button(action: {
                            
                        }) {
                            Text("Log out")
                                .buttonStyle(labelFontSize: 15, labelFontWeight: .semibold, foregroundColour: .secondary, backgroundColour: Color(.secondarySystemBackground), maxWidth: .infinity, maxHeight: 35, opacity: 0.8, cornerRadius: 10, paddingTop: 0, paddingLeading: 0, paddingBottom: 0, paddingTrailing: 0)
                        } //Button
                    }.padding(EdgeInsets(top: 5, leading: 0, bottom: 6, trailing: 0)) //HStack
                    
                } //VStack
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 110, alignment: .top)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))//ZStack
            Spacer()
            ScrollView {
                ForEach (names, id: \.self) { name in
                    Text(name)
                    
                } //ForEach
            } //ScrollView
        } //VStack
    }
}

struct ButtonModifier: ViewModifier {
    
    var labelFontSize: CGFloat
    var labelFontWeight: Font.Weight
    var foregroundColour: Color
    var backgroundColour: Color
    var maxWidth: CGFloat
    var maxHeight: CGFloat
    var opacity: Double
    var cornerRadius: CGFloat
    var paddingTop: CGFloat
    var paddingLeading: CGFloat
    var paddingBottom: CGFloat
    var paddingTrailing: CGFloat
    
    func body (content: Content) -> some View {
        content
            .foregroundColor(foregroundColour)
            .font(.system(size: labelFontSize, weight: labelFontWeight))
            .frame(minWidth: 0, maxWidth: maxWidth, minHeight: 0, maxHeight: maxHeight)
            .background(backgroundColour.opacity(opacity))
            .cornerRadius(cornerRadius)
            .padding(EdgeInsets(top: paddingTop, leading: paddingLeading, bottom: paddingBottom, trailing: paddingTrailing))
    }
}

extension View {
    func buttonStyle(labelFontSize: CGFloat,
                     labelFontWeight: Font.Weight,
                     foregroundColour: Color,
                     backgroundColour: Color,
                     maxWidth: CGFloat,
                     maxHeight: CGFloat,
                     opacity: Double,
                     cornerRadius: CGFloat,
                     paddingTop: CGFloat,
                     paddingLeading: CGFloat,
                     paddingBottom: CGFloat,
                     paddingTrailing: CGFloat) -> some View {
        self.modifier(ButtonModifier(labelFontSize: labelFontSize, labelFontWeight: labelFontWeight, foregroundColour: foregroundColour, backgroundColour: backgroundColour, maxWidth: maxWidth, maxHeight: maxHeight, opacity: opacity, cornerRadius: cornerRadius, paddingTop: paddingTop, paddingLeading: paddingLeading, paddingBottom: paddingBottom, paddingTrailing: paddingTrailing))
    }
}
