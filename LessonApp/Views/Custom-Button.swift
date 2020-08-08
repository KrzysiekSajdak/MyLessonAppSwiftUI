//
//  Custom-Button.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 08/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI

struct Custom_Button: View {
    var body: some View {
        Button(action: {
            print("test...")
        }) {
            HStack(alignment: .center) {
                Image(systemName: "trash")
                Text("Delete")
            }.font(.system(size: 35, weight: .medium))
        }
    }
}

struct Custom_Button_Previews: PreviewProvider {
    static var previews: some View {
        Custom_Button()
    }
}
