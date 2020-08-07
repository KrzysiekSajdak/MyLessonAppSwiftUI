//
//  Form-Sections.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 07/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Form_Sections: View {
    var body: some View {
        NavigationView{
            Form {
                Section{
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                    Text("Hello")
                }
            }.navigationBarTitle("SwiftUI Lesson", displayMode: .automatic)
        }
    }
}

struct Form_Sections_Previews: PreviewProvider {
    static var previews: some View {
        Form_Sections()
    }
}
