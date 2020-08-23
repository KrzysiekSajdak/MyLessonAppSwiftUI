//
//  ContentView.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 07/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var search: String = ""
    @State var icon: CGFloat  = 25
    @State var font: CGFloat = 30
    
    @State var date = Date()
    
    var body: some View {
        WordScramble()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
