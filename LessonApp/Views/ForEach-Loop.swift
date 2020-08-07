//
//  ForEach-Loop.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 07/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct ForEach_Loop: View {
    
    private let students = ["Kris", "Casper", "Nicholas"]
    
    @State private var selectedStudent = "Kris"
    
    var body: some View {
        Picker("Select", selection: $selectedStudent) {
            ForEach(0..<students.count) {
                Text(self.students[$0])
            }
        }
    }
}

struct ForEach_Loop_Previews: PreviewProvider {
    static var previews: some View {
        ForEach_Loop()
    }
}
