//
//  Show-Alert.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 08/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Show_Alert: View {
    
    @State private var showAlert = false
    
    var body: some View {
        Button("Show Alert") {
            self.showAlert = true
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("My alert"), message: Text("Info about alert"), dismissButton: .default(Text("OK")))
        }
    }
}

struct Show_Alert_Previews: PreviewProvider {
    static var previews: some View {
        Show_Alert()
    }
}
