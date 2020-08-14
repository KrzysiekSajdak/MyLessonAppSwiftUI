//
//  StepperInAction.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 13/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct StepperInAction: View {
    
    @State var stepAmount: Double = 20.0
    var body: some View {
        Stepper(value: $stepAmount, in: 2...20, step: 0.25) {
            Text("\(stepAmount, specifier: "%g")")
        }.padding()
    }
}

struct StepperInAction_Previews: PreviewProvider {
    static var previews: some View {
        StepperInAction()
    }
}
