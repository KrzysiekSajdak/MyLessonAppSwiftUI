//
//  Picker-Selector.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 07/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Picker_Selector: View {
    
    @State private var index = 0
    let list = ["one", "two", "three"]
    
    var body: some View {
        VStack {
            Picker(selection: $index, label: Text("")) {
                ForEach(0 ..< list.count) {
                    Text("\(self.list[$0])")
                }
            }
        }
    }
}

struct Picker_Selector_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Selector()
    }
}
