//
//  WorkWithList.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 21/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct WorkWithList: View {
    
    var input = """
                a
                b
                c
                """
    
    var body: some View {
        let letters = input.components(separatedBy: "\n")
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        return
        List {
            Section(header: Text("Section 1")) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            Section(header: Text("Section 2")) {
                ForEach(0..<5) {
                    Text("Number \($0)")
                }
            }
            Section(header: Text("Section 4")) {
                Text("\(trimmed!)")
            }
            Section(header: Text("Section 3")) {
                Text("Jakis Tekst")
            }
        }.listStyle(GroupedListStyle())
        
    }
}

struct WorkWithList_Previews: PreviewProvider {
    static var previews: some View {
        WorkWithList()
    }
}
