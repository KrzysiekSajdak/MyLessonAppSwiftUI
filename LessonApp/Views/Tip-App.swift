//
//  Tip-App.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 07/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Tip_App: View {
    
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(UIKeyboardType.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }}
                }
                Section {
                    Text("$\(checkAmount)")
                }
                Section(header: Text("How much tip do you want to leave?")) {
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
            }.navigationBarTitle("Tip app")
        }
    }
}

struct Tip_App_Previews: PreviewProvider {
    static var previews: some View {
        Tip_App()
    }
}
