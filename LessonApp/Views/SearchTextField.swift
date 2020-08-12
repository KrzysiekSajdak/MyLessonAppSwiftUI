//
//  SearchTextField.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 08/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI
import UIKit

// MARK: - TextField with clear button
struct SearchTextField: View {
    
    @Binding var search: String
    @Binding var fontSize: CGFloat
    @Binding var iconSize: CGFloat
    //@Binding var onCommit: CGFunction
    
    var body: some View {
        
        TextField("....", text: self.$search, onCommit: {
            print(self.$search)
        }
            
        ).modifier(ClearButton(text: self.$search, iconSize: self.$iconSize))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .font(.system(size: self.fontSize))
    }
}
struct ClearButton: ViewModifier
{
    @Binding var text: String
    @Binding var iconSize: CGFloat
    
    public func body(content: Content) -> some View
    {
        ZStack(alignment: .trailing)
        {
            content
            
            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "multiply.circle")
                        .resizable()
                        .frame(width: self.iconSize, height: self.iconSize)
                        .padding(.trailing, 8)
                        .foregroundColor(Color(UIColor.opaqueSeparator))
                }
            }
            
        }
    }
}

//struct SearchTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchTextField()
//    }
//}

struct SearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
