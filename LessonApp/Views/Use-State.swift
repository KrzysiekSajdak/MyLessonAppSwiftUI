//
//  Use-State.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 07/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Use_State: View {
    
    @State private var tapCount:Int = 0
    
    //two way binding
    @State private var name: String = ""
    
    var body: some View {
        Form {
            TextField("enter your name", text: $name)
            Text("My name is \(name)")
            Button("Press Me For Update Value: \(self.tapCount)"){
                self.tapCount += 1
            }
        }
    }
}

struct Use_State_Previews: PreviewProvider {
    static var previews: some View {
        Use_State()
    }
}
