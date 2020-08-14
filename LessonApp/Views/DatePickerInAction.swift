//
//  DatePickerInAction.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 13/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct DatePickerInAction: View {
    
    @State var date = Date()
    
    var body: some View {
        //        Form {
        //            DatePicker(selection: $date) {
        //                Text("Date Picker")
        //            }
        //        }
        
        //        DatePicker("Please enter a date",
        //                   selection: $date,
        //                   displayedComponents: .hourAndMinute)
        //            .labelsHidden()
        DatePicker("Please enter a date",
               selection: $date,
               in: Date()...)
        .labelsHidden()
    }
}

struct DatePickerInAction_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerInAction()
    }
}
//        Form {
        //            DatePicker(selection: $date) {
        //                Text("Date Picker")
        //            }
        //        }
        
        //        DatePicker("Please enter a date",
        //                   selection: $date,
        //                   displayedComponents: .hourAndMinute)
        //            .labelsHidden()
//        DatePicker("Please enter a date",
//               selection: $date,
//               in: Date()...)
//        .labelsHidden()
